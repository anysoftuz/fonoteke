import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:go_router/go_router.dart';

class AlbumsView extends StatefulWidget {
  const AlbumsView({super.key});

  @override
  State<AlbumsView> createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Альбомы"),
        actions: [
          IconButton(
            onPressed: () {
              context.push(AppRoutePath.search);
            },
            icon: AppIcons.search.svg(),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) => ListTile(
          contentPadding: const EdgeInsets.only(left: 16, right: 0),
          leading: Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(AppImages.image_9),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          textColor: white,
          title: const Text("Друзьями"),
          subtitle: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Arut, Onative"),
              Text("2024"),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: AppIcons.like.svg(),
              ),
              IconButton(
                onPressed: () {},
                icon: AppIcons.dots.svg(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
