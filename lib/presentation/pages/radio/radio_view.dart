import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/w_button.dart';
import 'package:fonoteke/presentation/common/widgets/w_scale_animation.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Радио")),
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
                      color: blue,
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
                color: white,
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
