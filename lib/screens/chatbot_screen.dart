import 'package:flutter/material.dart';

import '../services/chatbot_service.dart';
import '../services/local_storage_service.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatMessage {
  const _ChatMessage({required this.text, required this.isUser});

  final String text;
  final bool isUser;
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final service = ChatbotService();
  final storage = LocalStorageService();
  final controller = TextEditingController();
  final apiKeyController = TextEditingController();
  final modelController = TextEditingController();
  final endpointController = TextEditingController();
  final scrollController = ScrollController();
  final messages = <_ChatMessage>[
    const _ChatMessage(
      text:
          'Bienvenue sur le guide Kemet. Choisis un fournisseur puis pose une question.',
      isUser: false,
    ),
  ];
  ChatProvider provider = ChatProvider.local;
  final Map<ChatProvider, ChatProviderConfig> configs = {
    for (final p in ChatProvider.values) p: const ChatProviderConfig(),
  };
  bool sending = false;
  bool loadingConfig = true;

  String _providerLabel(ChatProvider p) =>
      p == ChatProvider.local ? 'Local (hors ligne)' : service.providerName(p);

  @override
  void initState() {
    super.initState();
    _loadConfig();
  }

  Future<void> _loadConfig() async {
    final savedProvider = await storage.loadChatProvider();
    final rawConfigs = await storage.loadChatProviderConfigs();

    ChatProvider selected = provider;
    if (savedProvider != null) {
      for (final p in ChatProvider.values) {
        if (p.name == savedProvider) selected = p;
      }
    }

    for (final p in ChatProvider.values) {
      final map = rawConfigs[p.name];
      if (map != null) {
        configs[p] = ChatProviderConfig.fromMap(map);
      } else {
        configs[p] = ChatProviderConfig(
          model: service.defaultModel(p),
          endpoint: service.defaultEndpoint(p),
        );
      }
    }

    if (!mounted) return;
    setState(() {
      provider = selected;
      _bindProviderFields();
      loadingConfig = false;
    });
  }

  void _bindProviderFields() {
    final c = configs[provider] ?? const ChatProviderConfig();
    apiKeyController.text = c.apiKey;
    modelController.text = c.model.isEmpty
        ? service.defaultModel(provider)
        : c.model;
    endpointController.text = c.endpoint.isEmpty
        ? service.defaultEndpoint(provider)
        : c.endpoint;
  }

  Future<void> _saveCurrentProviderConfig() async {
    final current = ChatProviderConfig(
      apiKey: apiKeyController.text.trim(),
      model: modelController.text.trim(),
      endpoint: endpointController.text.trim(),
    );
    configs[provider] = current;
    await storage.saveChatProvider(provider.name);
    final map = <String, Map<String, String>>{};
    configs.forEach((p, cfg) => map[p.name] = cfg.toMap());
    await storage.saveChatProviderConfigs(map);
  }

  Future<void> _send() async {
    final text = controller.text.trim();
    if (text.isEmpty || sending) return;

    setState(() {
      messages.add(_ChatMessage(text: text, isUser: true));
      sending = true;
      controller.clear();
    });

    await _saveCurrentProviderConfig();
    final answer = await service.reply(
      provider: provider,
      message: text,
      config: configs[provider] ?? const ChatProviderConfig(),
    );
    if (!mounted) return;
    setState(() {
      messages.add(_ChatMessage(text: answer, isUser: false));
      sending = false;
    });

    await Future<void>.delayed(const Duration(milliseconds: 60));
    if (!scrollController.hasClients) return;
    scrollController.animateTo(
      scrollController.position.maxScrollExtent + 120,
      duration: const Duration(milliseconds: 240),
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    apiKeyController.dispose();
    modelController.dispose();
    endpointController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(title: const Text('Kemet Explorer • Chatbot')),
      body: loadingConfig
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                  child: DropdownButtonFormField<ChatProvider>(
                    initialValue: provider,
                    decoration: const InputDecoration(
                      labelText: 'Fournisseur',
                      prefixIcon: Icon(Icons.hub_rounded),
                    ),
                    items: ChatProvider.values
                        .map(
                          (p) => DropdownMenuItem(
                            value: p,
                            child: Text(_providerLabel(p)),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (value == null) return;
                      setState(() {
                        provider = value;
                        _bindProviderFields();
                      });
                      _saveCurrentProviderConfig();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          TextField(
                            controller: apiKeyController,
                            decoration: const InputDecoration(
                              labelText: 'Clé API',
                              prefixIcon: Icon(Icons.key_rounded),
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: modelController,
                            decoration: const InputDecoration(
                              labelText: 'Modèle',
                              prefixIcon: Icon(Icons.memory_rounded),
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: endpointController,
                            decoration: const InputDecoration(
                              labelText: 'Endpoint',
                              prefixIcon: Icon(Icons.link_rounded),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerRight,
                            child: FilledButton.icon(
                              onPressed: () async {
                                await _saveCurrentProviderConfig();
                                if (!context.mounted) return;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Configuration chatbot sauvegardée.',
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.save_rounded),
                              label: const Text('Enregistrer'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final m = messages[index];
                      final align = m.isUser
                          ? Alignment.centerRight
                          : Alignment.centerLeft;
                      final bg = m.isUser
                          ? Theme.of(context).colorScheme.primary
                          : (isDark
                                ? Theme.of(
                                    context,
                                  ).colorScheme.surfaceContainerHigh
                                : Colors.white);
                      final fg = m.isUser
                          ? Theme.of(context).colorScheme.onPrimary
                          : Theme.of(context).colorScheme.onSurface;
                      return Align(
                        alignment: align,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ),
                          constraints: const BoxConstraints(maxWidth: 320),
                          decoration: BoxDecoration(
                            color: bg,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Text(m.text, style: TextStyle(color: fg)),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 6, 12, 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: controller,
                          textInputAction: TextInputAction.send,
                          onSubmitted: (_) => _send(),
                          decoration: const InputDecoration(
                            hintText: 'Pose une question sur Kemet...',
                            prefixIcon: Icon(Icons.chat_bubble_outline_rounded),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      FilledButton(
                        onPressed: sending ? null : _send,
                        child: sending
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Icon(Icons.send_rounded),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
