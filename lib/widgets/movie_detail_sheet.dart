// lib/widgets/movie_detail_sheet.dart

import 'package:flutter/material.dart';
import '../models/movie_model.dart'; // Import MovieModel

class MovieDetailSheet extends StatelessWidget {
  final MovieModel movie;

  const MovieDetailSheet({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: ListView(
        children: [
          Center(
            child: Hero(
              tag: 'poster-${movie.id}',
              child: Image.asset(
                movie.posterUrl,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            movie.title,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              '⭐ Rating: ${movie.rating}',
              style: const TextStyle(fontSize: 18, color: Colors.amber),
            ),
          ),
          const Divider(height: 30),
          const Text(
            'Sinopsis:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            movie.synopsis,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
