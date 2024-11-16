import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:go_router/go_router.dart';

class PerformersView extends StatefulWidget {
  const PerformersView({super.key});

  @override
  State<PerformersView> createState() => _PerformersViewState();
}

class _PerformersViewState extends State<PerformersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Исполнители"),
        actions: [
          IconButton(
            onPressed: () {
              context.push(AppRoutePath.search);
            },
            icon: AppIcons.search.svg(),
          ),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Любимые артисты",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: white,
                  ),
                ),
                Text(
                  "4 артиста",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: white,
                  ),
                )
              ],
            ),
          ),
          ListView.separated(
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) => ListTile(
              contentPadding: const EdgeInsets.only(left: 16, right: 0),
              leading: const CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(AppImages.image_9),
              ),
              title: const Text(
                "Jay-Z",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: white,
                ),
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
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Все артисты",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: white,
                  ),
                ),
                Text(
                  "999 артиста",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: white,
                  ),
                )
              ],
            ),
          ),
          ListView.separated(
            itemCount: 12,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) => ListTile(
              contentPadding: const EdgeInsets.only(left: 16, right: 0),
              leading: const CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(AppImages.image_9),
              ),
              title: const Text(
                "Onative",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: white,
                ),
              ),
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
        ],
      ),
    );
  }
}
