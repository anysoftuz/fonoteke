import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/w_scale_animation.dart';

class PlaylistGenreView extends StatefulWidget {
  const PlaylistGenreView({super.key});

  @override
  State<PlaylistGenreView> createState() => _PlaylistGenreViewState();
}

class _PlaylistGenreViewState extends State<PlaylistGenreView> {
  List<PlaylistsModel> playlist = [
    PlaylistsModel(title: "Поп", image: AppImages.pop),
    PlaylistsModel(title: "Хип-хоп", image: AppImages.hiphop),
    PlaylistsModel(title: "Retro", image: AppImages.retro),
    PlaylistsModel(title: "Классический", image: AppImages.classic),
    PlaylistsModel(title: "Maqom", image: AppImages.maqom),
    PlaylistsModel(title: "Instrumental", image: AppImages.instrum),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Плейлист по жанру")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: playlist.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          mainAxisExtent: 196,
        ),
        itemBuilder: (context, index) => WScaleAnimation(
          onTap: () {},
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  playlist[index].image,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                playlist[index].title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlaylistsModel {
  final String title;
  final String image;

  PlaylistsModel({
    required this.title,
    required this.image,
  });
}
