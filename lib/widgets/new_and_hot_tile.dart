// widgets/new_and_hot_tile.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../models/movie.dart';

class NewAndHotTile extends StatelessWidget {
  const NewAndHotTile({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    var date = DateTime.parse(movie.releaseDate);
    return InkWell(
      onTap: () {
        // Static implementation - navigation logic can be adjusted as needed
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat('MMM').format(date).toUpperCase(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              Text(
                DateFormat('dd').format(date),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Replace PosterImage with Image.asset for static data
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: AssetImage(movie
                          .imageUrl), // Fixed: Changed Image.asset to AssetImage
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Replace LogoImage with Text for static data
                    Text(
                      movie.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    IconButton(
                      padding: const EdgeInsets.all(24),
                      icon: const Icon(LucideIcons.bell),
                      onPressed: () {},
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(24),
                      icon: const Icon(LucideIcons.info),
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Coming ${DateFormat('EEEE').format(date)}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      movie.overview,
                      style: const TextStyle(color: Colors.grey),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    // Static genres
                    const Text(
                      'Genres: Psychological, Dark, Drama, Keeping Secrets, Movie',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
