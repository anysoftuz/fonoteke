import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:go_router/go_router.dart';

class PlaylistsView extends StatefulWidget {
  const PlaylistsView({super.key});

  @override
  State<PlaylistsView> createState() => _PlaylistsViewState();
}

class _PlaylistsViewState extends State<PlaylistsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Плейлисты"),
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
          onTap: () {
            context.push(AppRoutePath.albums);
          },
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
          title: const Text("Vibes"),
          subtitle: const Text("113 треков"),
          trailing: IconButton(
            onPressed: () {},
            icon: AppIcons.arrowRight.svg(),
          ),
        ),
      ),
    );
  }
}
