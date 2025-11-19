import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/movie_model.dart';

class MovieNotifier extends StateNotifier<List<MovieModel>> {
  MovieNotifier() : super(dummyMovies);

  String selectedCategory = "All";
  String searchQuery = "";

  void setCategory(String category) {
    selectedCategory = category;
    _applyFilters();
  }

  void searchMovie(String query) {
    searchQuery = query;
    _applyFilters();
  }

  void _applyFilters() {
    List<MovieModel> filtered = dummyMovies;

    // FILTER CATEGORY
    if (selectedCategory != "All") {
      filtered = filtered.where((m) =>
          m.genre.toLowerCase().contains(selectedCategory.toLowerCase())
      ).toList();
    }

    // FILTER SEARCH
    if (searchQuery.trim().isNotEmpty) {
      filtered = filtered.where((m) =>
          m.title.toLowerCase().contains(searchQuery.toLowerCase()) ||
          m.genre.toLowerCase().contains(searchQuery.toLowerCase())
      ).toList();
    }

    state = filtered;
  }
}

final movieProvider =
    StateNotifierProvider<MovieNotifier, List<MovieModel>>((ref) {
  return MovieNotifier();
});
