import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/w_button.dart';
import 'package:fonoteke/presentation/common/widgets/w_scale_animation.dart';

class NewReelsView extends StatefulWidget {
  const NewReelsView({super.key});

  @override
  State<NewReelsView> createState() => _NewReelsViewState();
}

class _NewReelsViewState extends State<NewReelsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Новые релизы")),
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
                      color: green,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Самые новые треки на Fonoteka",
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
        body: GridView.builder(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 232,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: blue,
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
              const SizedBox(height: 4),
              const Text(
                "Set Fire to the Rain, Rolling In The Deep, Someone Like You",
                maxLines: 2,
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
