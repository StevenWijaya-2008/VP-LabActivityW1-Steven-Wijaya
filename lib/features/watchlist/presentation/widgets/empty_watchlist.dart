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
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.movie_filter_outlined,
            size: 64,
            color: theme.colorScheme.outline,
          ),
          const SizedBox(height: 16),
          Text(
            'No drama found for "$query"',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),
          TextButton.icon(
            onPressed: onClear,
            icon: const Icon(Icons.close),
            label: const Text('Clear search'),
          ),
        ],
      ),
    );
  }
}