import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/w_button.dart';
import 'package:fonoteke/presentation/common/widgets/w_scale_animation.dart';

class TopChartyView extends StatefulWidget {
  const TopChartyView({super.key});

  @override
  State<TopChartyView> createState() => _TopChartyViewState();
}

class _TopChartyViewState extends State<TopChartyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Топ-чарты")),
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
                      color: orang,
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
        body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            contentPadding: const EdgeInsets.only(left: 16, right: 0),
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 24,
                  height: 36,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        (index + 1).toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: white,
                        ),
                      ),
                      index != 3
                          ? AppIcons.arrowCentr.svg()
                          : AppIcons.arrowTop.svg()
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
            textColor: white,
            title: const Text("Mistake"),
            subtitle: const Text("Rauf & Faik"),
            trailing: IconButton(
              onPressed: () {},
              icon: AppIcons.dots.svg(),
            ),
          ),
        ),
      ),
    );
  }
}
