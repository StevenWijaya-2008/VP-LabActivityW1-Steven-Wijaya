import 'package:flutter/material.dart';

class WatchlistSearch extends StatelessWidget {
  final TextEditingController controller;
  final String query;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  const WatchlistSearch({
    super.key,
    required this.controller,
    required this.query,
    required this.onChanged,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Search drama...',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: query.isEmpty ? null : IconButton(
            icon: const Icon(Icons.clear),
            onPressed: onClear,
          ),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}