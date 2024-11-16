import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:go_router/go_router.dart';

class CollectionView extends StatefulWidget {
  const CollectionView({super.key});

  @override
  State<CollectionView> createState() => _CollectionViewState();
}

class _CollectionViewState extends State<CollectionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.push(AppRoutePath.profile);
          },
          icon: const CircleAvatar(
            backgroundImage: AssetImage(AppImages.avat),
          ),
        ),
        title: const Text("Коллекция"),
        actions: [
          IconButton(
            onPressed: () {
              context.push(AppRoutePath.search);
            },
            icon: AppIcons.search.svg(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 16, right: 8),
              tileColor: darkContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onTap: () {
                context.push(AppRoutePath.playlists);
              },
              leading: AppIcons.noteList.svg(),
              title: const Text(
                "Плейлисты",
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: AppIcons.arrowRight.svg(),
            ),
            const SizedBox(height: 12),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 16, right: 8),
              tileColor: darkContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onTap: () {
                context.push(AppRoutePath.performers);
              },
              leading: AppIcons.userNote.svg(),
              title: const Text(
                "Исполнители",
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: AppIcons.arrowRight.svg(),
            ),
            const SizedBox(height: 12),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 16, right: 8),
              tileColor: darkContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onTap: () {
                context.push(AppRoutePath.save);
              },
              leading: AppIcons.save.svg(),
              title: const Text(
                "Загруженное",
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: AppIcons.arrowRight.svg(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
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
            ListView.builder(
              itemCount: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => ListTile(
                contentPadding: EdgeInsets.zero,
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
                      icon: AppIcons.download.svg(),
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
      ),
    );
  }
}
