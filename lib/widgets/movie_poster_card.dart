import 'package:flutter/material.dart';
import '../models/movie_model.dart';

class MoviePosterCard extends StatelessWidget {
  final MovieModel movie;

  const MoviePosterCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: AspectRatio(
        aspectRatio: 2 / 3, // Poster ratio biar gak melar
        child: Image.asset(
          movie.posterUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
