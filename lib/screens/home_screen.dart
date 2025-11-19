import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/movie_state_provider.dart';
import '../widgets/movie_poster_card.dart';
import '../widgets/movie_category_chip.dart';
import '../screens/movie_detail_screen.dart';

class MovieHomeScreen extends ConsumerWidget {
  const MovieHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(movieProvider);
    final movieNotifier = ref.read(movieProvider.notifier);

    final width = MediaQuery.of(context).size.width;
    final crossAxis = width < 600 ? 3 : 6;

    // TEXT UNTUK SLIDER
    final bannerTexts = [
      "🔥 Trending Today",
      "⭐ Recommended For You",
      "🎥 New Releases"
    ];

    // GAMBAR SLIDER
    final bannerImages = [
      "assets/images/poster7.jpg",
      "assets/images/poster8.jpg",
      "assets/images/poster9.jpg",
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),

      body: SafeArea(
        child: CustomScrollView(
          slivers: [

            // ================= SEARCH BAR =================
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onChanged: movieNotifier.searchMovie,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Search movie...",
                    hintStyle: const TextStyle(color: Colors.white54),
                    filled: true,
                    fillColor: Colors.white12,
                    prefixIcon: const Icon(Icons.search, color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),

            // ================= SLIDER BANNER =================
            SliverToBoxAdapter(
              child: SizedBox(
                height: 230,
                child: PageView.builder(
                  itemCount: bannerImages.length,
                  itemBuilder: (context, index) {
                    return buildBanner(
                      bannerImages[index],
                      bannerTexts[index],
                    );
                  },
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 18)),

            // ================= CATEGORY =================
            SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  children: const [
                    MovieCategoryChip(label: "All"),
                    MovieCategoryChip(label: "Action"),
                    MovieCategoryChip(label: "Romance"),
                    MovieCategoryChip(label: "Horror"),
                    MovieCategoryChip(label: "Anime"),
                    MovieCategoryChip(label: "Comedy"),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 18)),

            // ================= GRID MOVIES =================
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final movie = movies[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MovieDetailScreen(movie: movie),
                          ),
                        );
                      },
                      child: Column(
                        children: [

                          // Poster Stabil, Anti Overflow
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 2 / 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: MoviePosterCard(movie: movie),
                              ),
                            ),
                          ),

                          const SizedBox(height: 5),

                          // Judul aman, tidak overflow
                          Text(
                            movie.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: movies.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxis,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 14,
                  childAspectRatio: 0.55,
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 30)),
          ],
        ),
      ),
    );
  }

  // ================= HELPER BANNER =================
  Widget buildBanner(String imgPath, String title) {
    return Stack(
      children: [
        Image.asset(
          imgPath,
          height: 230,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: 230,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black87],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 16,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
