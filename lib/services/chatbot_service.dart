import 'dart:convert';
import 'dart:io';

enum ChatProvider { openai, anthropic, google, mistral, local }

class ChatProviderConfig {
  const ChatProviderConfig({
    this.apiKey = '',
    this.model = '',
    this.endpoint = '',
  });

  final String apiKey;
  final String model;
  final String endpoint;

  ChatProviderConfig copyWith({
    String? apiKey,
    String? model,
    String? endpoint,
  }) {
    return ChatProviderConfig(
      apiKey: apiKey ?? this.apiKey,
      model: model ?? this.model,
      endpoint: endpoint ?? this.endpoint,
    );
  }

  Map<String, String> toMap() => {
    'apiKey': apiKey,
    'model': model,
    'endpoint': endpoint,
  };

  static ChatProviderConfig fromMap(Map<String, String> map) {
    return ChatProviderConfig(
      apiKey: map['apiKey'] ?? '',
      model: map['model'] ?? '',
      endpoint: map['endpoint'] ?? '',
    );
  }
}

class ChatbotService {
  String providerName(ChatProvider p) => switch (p) {
    ChatProvider.openai => 'OpenAI',
    ChatProvider.anthropic => 'Anthropic',
    ChatProvider.google => 'Google',
    ChatProvider.mistral => 'Mistral',
    ChatProvider.local => 'Local',
  };

  String defaultModel(ChatProvider p) => switch (p) {
    ChatProvider.openai => 'gpt-4.1-mini',
    ChatProvider.anthropic => 'claude-3-5-sonnet-latest',
    ChatProvider.google => 'gemini-1.5-pro',
    ChatProvider.mistral => 'mistral-large-latest',
    ChatProvider.local => 'kemet-local',
  };

  String defaultEndpoint(ChatProvider p) => switch (p) {
    ChatProvider.openai => 'https://api.openai.com/v1/chat/completions',
    ChatProvider.anthropic => 'https://api.anthropic.com/v1/messages',
    ChatProvider.google =>
      'https://generativelanguage.googleapis.com/v1beta/models',
    ChatProvider.mistral => 'https://api.mistral.ai/v1/chat/completions',
    ChatProvider.local => '',
  };

  Future<String> reply({
    required ChatProvider provider,
    required String message,
    required ChatProviderConfig config,
  }) async {
    final input = message.trim();
    if (input.isEmpty) return '';
    if (provider == ChatProvider.local || config.apiKey.trim().isEmpty) {
      await Future<void>.delayed(const Duration(milliseconds: 260));
      return '[${providerName(provider)}] ${_kemetReply(input.toLowerCase())}';
    }

    try {
      final text = await _callProvider(
        provider: provider,
        message: input,
        config: config,
      );
      if (text.trim().isNotEmpty) {
        return '[${providerName(provider)}] ${text.trim()}';
      }
    } catch (_) {
      // fallback below
    }
    return '[${providerName(provider)}] ${_kemetReply(input.toLowerCase())}\n\n(Mode secours local activé: vérifie clé/API/end-point.)';
  }

  Future<String> _callProvider({
    required ChatProvider provider,
    required String message,
    required ChatProviderConfig config,
  }) async {
    return switch (provider) {
      ChatProvider.openai => _callOpenAI(message, config),
      ChatProvider.anthropic => _callAnthropic(message, config),
      ChatProvider.google => _callGoogle(message, config),
      ChatProvider.mistral => _callMistral(message, config),
      ChatProvider.local => Future.value(_kemetReply(message.toLowerCase())),
    };
  }

  Future<String> _callOpenAI(String message, ChatProviderConfig config) async {
    final endpoint = config.endpoint.isEmpty
        ? defaultEndpoint(ChatProvider.openai)
        : config.endpoint;
    final payload = {
      'model': config.model.isEmpty
          ? defaultModel(ChatProvider.openai)
          : config.model,
      'messages': [
        {
          'role': 'system',
          'content':
              'Tu es un guide pédagogique de l’Égypte antique. Réponds en français, clair et simple.',
        },
        {'role': 'user', 'content': message},
      ],
      'temperature': 0.6,
    };
    final jsonMap = await _postJson(
      url: endpoint,
      headers: {'Authorization': 'Bearer ${config.apiKey}'},
      payload: payload,
    );
    final choices = jsonMap['choices'];
    if (choices is List && choices.isNotEmpty) {
      final first = choices.first;
      if (first is Map &&
          first['message'] is Map &&
          (first['message'] as Map)['content'] is String) {
        return ((first['message'] as Map)['content'] as String).trim();
      }
    }
    return '';
  }

  Future<String> _callAnthropic(
    String message,
    ChatProviderConfig config,
  ) async {
    final endpoint = config.endpoint.isEmpty
        ? defaultEndpoint(ChatProvider.anthropic)
        : config.endpoint;
    final payload = {
      'model': config.model.isEmpty
          ? defaultModel(ChatProvider.anthropic)
          : config.model,
      'max_tokens': 500,
      'system':
          'Tu es un guide pédagogique de l’Égypte antique. Réponds en français, clair et simple.',
      'messages': [
        {'role': 'user', 'content': message},
      ],
    };
    final jsonMap = await _postJson(
      url: endpoint,
      headers: {'x-api-key': config.apiKey, 'anthropic-version': '2023-06-01'},
      payload: payload,
    );
    final content = jsonMap['content'];
    if (content is List && content.isNotEmpty) {
      final first = content.first;
      if (first is Map && first['text'] is String) {
        return (first['text'] as String).trim();
      }
    }
    return '';
  }

  Future<String> _callGoogle(String message, ChatProviderConfig config) async {
    final model = config.model.isEmpty
        ? defaultModel(ChatProvider.google)
        : config.model;
    final base = config.endpoint.isEmpty
        ? defaultEndpoint(ChatProvider.google)
        : config.endpoint;
    final endpoint =
        '$base/$model:generateContent?key=${Uri.encodeComponent(config.apiKey)}';
    final payload = {
      'contents': [
        {
          'parts': [
            {
              'text':
                  'Tu es un guide pédagogique de l’Égypte antique. Réponds en français, clair et simple.\n\nQuestion: $message',
            },
          ],
        },
      ],
    };
    final jsonMap = await _postJson(
      url: endpoint,
      headers: const {},
      payload: payload,
    );
    final candidates = jsonMap['candidates'];
    if (candidates is List && candidates.isNotEmpty) {
      final first = candidates.first;
      if (first is Map &&
          first['content'] is Map &&
          (first['content'] as Map)['parts'] is List) {
        final parts = (first['content'] as Map)['parts'] as List;
        if (parts.isNotEmpty &&
            parts.first is Map &&
            (parts.first as Map)['text'] is String) {
          return ((parts.first as Map)['text'] as String).trim();
        }
      }
    }
    return '';
  }

  Future<String> _callMistral(String message, ChatProviderConfig config) async {
    final endpoint = config.endpoint.isEmpty
        ? defaultEndpoint(ChatProvider.mistral)
        : config.endpoint;
    final payload = {
      'model': config.model.isEmpty
          ? defaultModel(ChatProvider.mistral)
          : config.model,
      'messages': [
        {
          'role': 'system',
          'content':
              'Tu es un guide pédagogique de l’Égypte antique. Réponds en français, clair et simple.',
        },
        {'role': 'user', 'content': message},
      ],
      'temperature': 0.6,
    };
    final jsonMap = await _postJson(
      url: endpoint,
      headers: {'Authorization': 'Bearer ${config.apiKey}'},
      payload: payload,
    );
    final choices = jsonMap['choices'];
    if (choices is List && choices.isNotEmpty) {
      final first = choices.first;
      if (first is Map &&
          first['message'] is Map &&
          (first['message'] as Map)['content'] is String) {
        return ((first['message'] as Map)['content'] as String).trim();
      }
    }
    return '';
  }

  Future<Map<String, dynamic>> _postJson({
    required String url,
    required Map<String, String> headers,
    required Map<String, dynamic> payload,
  }) async {
    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 20);
    try {
      final request = await client.postUrl(Uri.parse(url));
      request.headers.contentType = ContentType.json;
      headers.forEach(request.headers.set);
      request.write(jsonEncode(payload));
      final response = await request.close();
      final body = await utf8.decodeStream(response);
      if (response.statusCode < 200 || response.statusCode >= 300) {
        throw HttpException('HTTP ${response.statusCode}: $body');
      }
      final decoded = jsonDecode(body);
      if (decoded is Map<String, dynamic>) return decoded;
      return <String, dynamic>{};
    } finally {
      client.close(force: true);
    }
  }

  String _kemetReply(String input) {
    if (input.contains('osiris') || input.contains('isis')) {
      return 'Le mythe d’Osiris raconte mort, renaissance et légitimité royale. Veux-tu une version courte ou détaillée ?';
    }
    if (input.contains('anubis') || input.contains('momif')) {
      return 'Anubis est lié à l’embaumement et à la pesée du cœur. La momification protège le corps pour l’au-delà.';
    }
    if (input.contains('rams') || input.contains('pharaon')) {
      return 'Tu peux explorer la page Pharaons: elle est triée chronologiquement et filtrable par dynastie.';
    }
    if (input.contains('pyram') || input.contains('gizeh')) {
      return 'Les pyramides de Gizeh datent de la IVe dynastie: Khéops, Khéphren et Mykérinos.';
    }
    if (input.contains('rite') || input.contains('funéra')) {
      return 'Les rites funéraires évoluent de la fosse prédynastique au tombeau royal décoré (Vallée des Rois).';
    }
    if (input.contains('bonjour') || input.contains('salut')) {
      return 'Bonjour. Pose-moi une question sur dieux, pharaons, monuments, rites funéraires ou chronologie.';
    }
    return 'Je peux t’expliquer la mythologie, les pharaons, les monuments, la chronologie ou les rites funéraires. Que veux-tu découvrir ?';
  }
}
