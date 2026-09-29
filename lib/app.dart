import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/watchlist/presentation/watchlist_screen.dart';

class WarungApp extends StatelessWidget {
  const WarungApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warung Digital',
      theme: AppTheme.lightTheme,
      home: const WatchlistScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}