import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/movie_state_provider.dart';
import '../widgets/movie_poster_card.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(movieProvider);
    final movieNotifier = ref.read(movieProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: true,
        title: TextField(
          onChanged: movieNotifier.searchMovie,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            hintText: "Search movie...",
            hintStyle: TextStyle(color: Colors.white54),
            border: InputBorder.none,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: movies.isEmpty
            ? const Center(
                child: Text(
                  "No results",
                  style: TextStyle(color: Colors.white54),
                ),
              )
            : GridView.builder(
                itemCount: movies.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return MoviePosterCard(movie: movies[index]);
                },
              ),
      ),
    );
  }
}
