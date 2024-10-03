import 'package:flutter/material.dart';
import 'package:fonoteke/assets/colors/colors.dart';

class PlaylistsKaraokeView extends StatefulWidget {
  const PlaylistsKaraokeView({super.key});

  @override
  State<PlaylistsKaraokeView> createState() => _PlaylistsKaraokeViewState();
}

class _PlaylistsKaraokeViewState extends State<PlaylistsKaraokeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Плейлисты")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          mainAxisExtent: 232,
        ),
        itemBuilder: (context, index) => SizedBox(
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: blue,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Sad Vibes",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                "Set Fire to the Rain, Rolling In The Deep, Someone Like You",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                "113 треков",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
