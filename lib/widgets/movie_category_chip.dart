import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/movie_state_provider.dart';

class MovieCategoryChip extends ConsumerWidget {
  final String label;

  const MovieCategoryChip({super.key, required this.label});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // WATCH agar rebuild ketika kategori berubah
    final notifier = ref.watch(movieProvider.notifier);
    final isActive = notifier.selectedCategory == label;

    return GestureDetector(
      onTap: () {
        ref.read(movieProvider.notifier).setCategory(label);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.redAccent : Colors.white12,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isActive ? Colors.red : Colors.white24,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.white70,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
