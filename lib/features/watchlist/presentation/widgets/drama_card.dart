import 'package:flutter/material.dart';
import '../../domain/drama_model.dart';

class DramaCard extends StatelessWidget {
  final Drama drama;
  final VoidCallback onAddEpisode;

  const DramaCard({
    super.key,
    required this.drama,
    required this.onAddEpisode,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          drama.title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        subtitle: Text(
          '${drama.genre} • Ep ${drama.watchedEpisodes}/${drama.totalEpisodes}',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        trailing: IconButton.filledTonal(
          icon: const Icon(Icons.add),
          tooltip: 'Add Episode',
          onPressed: onAddEpisode,
        ),
      ),
    );
  }
}