import 'package:flutter/material.dart';
import '../domain/drama_model.dart';
import 'widgets/watchlist_header.dart';
import 'widgets/watchlist_search.dart';
import 'widgets/drama_card.dart';
import 'widgets/empty_watchlist.dart';

class WatchlistScreen extends StatefulWidget {
  const WatchlistScreen({super.key});

  @override
  State<WatchlistScreen> createState() => _WatchlistScreenState();
}

class _WatchlistScreenState extends State<WatchlistScreen> {
  final List<Drama> _dramas = const [
    Drama(id: 'd1', title: 'Crash Landing on You', genre: 'Romance', totalEpisodes: 16, watchedEpisodes: 16),
    Drama(id: 'd2', title: 'Alchemy of Souls', genre: 'Fantasy', totalEpisodes: 30, watchedEpisodes: 12),
    Drama(id: 'd3', title: 'Vincenzo', genre: 'Action', totalEpisodes: 20, watchedEpisodes: 5),
  ];

  late TextEditingController _searchController;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _clearSearch() {
    _searchController.clear();
    setState(() => _query = '');
  }

  void _incrementEpisode(String id) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Episode ditambahkan!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final visibleDramas = _dramas.where((drama) =>
    _query.isEmpty || drama.title.toLowerCase().contains(_query.toLowerCase())
    ).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Drama Vault')),
      body: Column(
        children: [
          const WatchlistHeader(),
          WatchlistSearch(
            controller: _searchController,
            query: _query,
            onChanged: (value) => setState(() => _query = value),
            onClear: _clearSearch,
          ),
          Expanded(
            child: visibleDramas.isEmpty
                ? EmptyWatchlist(query: _query, onClear: _clearSearch)
                : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: visibleDramas.length,
              itemBuilder: (context, index) {
                final drama = visibleDramas[index];
                return DramaCard(
                  drama: drama,
                  onAddEpisode: () => _incrementEpisode(drama.id),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}