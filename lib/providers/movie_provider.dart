import 'package:flutter/material.dart';
import '../models/movie_model.dart';

class MovieProvider extends ChangeNotifier {
  List<MovieModel> movies = dummyMovies;
  List<MovieModel> searchResult = [];

  void searchMovie(String query) {
    if (query.isEmpty) {
      searchResult = movies;
    } else {
      searchResult = movies
          .where((movie) =>
              movie.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
