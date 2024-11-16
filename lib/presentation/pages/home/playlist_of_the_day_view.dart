import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/w_button.dart';
import 'package:fonoteke/presentation/common/widgets/w_scale_animation.dart';

class PlaylistOfTheDayView extends StatefulWidget {
  const PlaylistOfTheDayView({super.key});

  @override
  State<PlaylistOfTheDayView> createState() => _PlaylistOfTheDayViewState();
}

class _PlaylistOfTheDayViewState extends State<PlaylistOfTheDayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Плейлист дня")),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    width: 240,
                    height: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: AssetImage(AppImages.playlist),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Каждый день новый",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: white,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      WButton(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        onTap: () {},
                        textColor: white,
                        color: darkContainer,
                        child: Row(
                          children: [
                            const Text("Добавить"),
                            const SizedBox(width: 16),
                            AppIcons.favorite.svg(),
                          ],
                        ),
                      ),
                      const Spacer(),
                      WScaleAnimation(
                        onTap: () {},
                        child: SizedBox(
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: darkContainer,
                            child: AppIcons.download.svg(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      WScaleAnimation(
                        onTap: () {},
                        child: SizedBox(
                          height: 48,
                          width: 48,
                          child: AppIcons.play.svg(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
        body: ListView.builder(
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
            title: const Text("Mistake"),
            subtitle: const Text("Rauf & Faik"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: AppIcons.favorite.svg(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: AppIcons.dots.svg(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
