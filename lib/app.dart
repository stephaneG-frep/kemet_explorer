import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/onboarding_screen.dart';
import 'services/local_storage_service.dart';
import 'theme/app_theme.dart';

class KemetExplorerApp extends StatefulWidget {
  const KemetExplorerApp({super.key});

  @override
  State<KemetExplorerApp> createState() => _KemetExplorerAppState();
}

class _KemetExplorerAppState extends State<KemetExplorerApp> {
  final storage = LocalStorageService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kemet Explorer',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: FutureBuilder<bool>(
        future: storage.isOnboardingSeen(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          if (snapshot.data == false) {
            return OnboardingScreen(
              onDone: () async {
                await storage.setOnboardingSeen();
                if (!context.mounted) return;
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const HomeScreen()),
                );
              },
            );
          }
          return const HomeScreen();
        },
      ),
    );
  }
}
