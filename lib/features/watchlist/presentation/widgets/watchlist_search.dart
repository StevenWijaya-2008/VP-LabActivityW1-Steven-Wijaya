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
      padding: const EdgeInsets.all(16.0),
      child: SearchBar(
        controller: controller,
        hintText: 'Search drama...',
        leading: const Icon(Icons.search),
        trailing: [
          if (query.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: onClear,
            ),
        ],
        onChanged: onChanged,
        elevation: WidgetStateProperty.all(0),
        backgroundColor: WidgetStateProperty.all(
          Theme.of(context).colorScheme.surfaceContainerHigh,
        ),
      ),
    );
  }
}