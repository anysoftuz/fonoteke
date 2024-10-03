import 'package:flutter/material.dart';
import 'package:fonoteke/assets/colors/colors.dart';

class PlaylistGenreView extends StatefulWidget {
  const PlaylistGenreView({super.key});

  @override
  State<PlaylistGenreView> createState() => _PlaylistGenreViewState();
}

class _PlaylistGenreViewState extends State<PlaylistGenreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Плейлист по жанру")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: blue,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
