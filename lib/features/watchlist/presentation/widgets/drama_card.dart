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
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(drama.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('${drama.genre} • Ep ${drama.watchedEpisodes}/${drama.totalEpisodes}'),
        trailing: IconButton(
          icon: const Icon(Icons.add_circle_outline),
          onPressed: onAddEpisode,
        ),
      ),
    );
  }
}