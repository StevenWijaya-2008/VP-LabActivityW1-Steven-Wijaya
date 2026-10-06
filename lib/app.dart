import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/watchlist/presentation/watchlist_screen.dart';

class WarungApp extends StatelessWidget {
  const WarungApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drama Vault',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const WatchlistScreen(),
    );
  }
}