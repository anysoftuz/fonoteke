import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/pages/home/home_view.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:fonoteke/presentation/widgets/music_bottom_sheet.dart';
import 'package:go_router/go_router.dart';

class KaraokeView extends StatefulWidget {
  const KaraokeView({super.key});

  @override
  State<KaraokeView> createState() => _KaraokeViewState();
}

class _KaraokeViewState extends State<KaraokeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Караоке"),
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
          MoreTitle(
            title: 'Плейлисты',
            onPressed: () {
              context.push(AppRoutePath.karaokePlaylist);
            },
          ),
          SizedBox(
            width: double.infinity,
            height: 208,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => SizedBox(
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: AssetImage(AppImages.throne),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Spacer(),
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
                    )
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: 12,
            ),
          ),
          MoreTitle(
            title: 'Популярные караоке-музыки',
            onPressed: () {
              context.push(AppRoutePath.topCharty);
            },
          ),
          ...List.generate(
            12,
            (index) => ListTile(
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
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage(AppImages.image_9),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              textColor: white,
              title: const Text("Mistake"),
              subtitle: const Text("Rauf & Faik"),
              trailing: IconButton(
                onPressed: () {
                  showMusicOptions(context);
                },
                icon: AppIcons.dots.svg(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
