import 'package:flutter/material.dart';

class EmptyWatchlist extends StatelessWidget {
  final String query;
  final VoidCallback onClear;

  const EmptyWatchlist({
    super.key,
    required this.query,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.movie_filter, size: 48, color: Colors.grey),
          const SizedBox(height: 8),
          Text('No drama found for "$query"'),
          TextButton(
            onPressed: onClear,
            child: const Text('Clear search'),
          ),
        ],
      ),
    );
  }
}