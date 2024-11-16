import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/w_scale_animation.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:fonoteke/presentation/widgets/music_bottom_sheet.dart';
import 'package:go_router/go_router.dart';
import 'package:just_audio/just_audio.dart';
part 'package:fonoteke/presentation/pages/home/mixin/home_view_mixin.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              context.push(AppRoutePath.profile);
            },
            icon: const CircleAvatar(
              backgroundImage: AssetImage(AppImages.avat),
            ),
          ),
        ),
        title: AppIcons.logo.svg(),
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
            child: Text(
              "Что послушать?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => WScaleAnimation(
                onTap: () {
                  context.push(AppRoutePath.playlistOfTheDay);
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width / 2 - 24,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: blue,
                    image: DecorationImage(
                      image: AssetImage(whatToListenTo[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: whatToListenTo.length,
            ),
          ),
          MoreTitle(
            title: 'Новые релизы',
            onPressed: () {
              context.push(AppRoutePath.newReels);
            },
          ),
          SizedBox(
            height: 420,
            width: double.infinity,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                mainAxisExtent: 144,
              ),
              itemCount: playlist.children.length,
              itemBuilder: (context, index) => WScaleAnimation(
                onTap: () {
                  context.push(AppRoutePath.music);
                },
                child: SizedBox(
                  width: 144,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: red,
                            image: const DecorationImage(
                              image: AssetImage(AppImages.throne),
                              fit: BoxFit.cover,
                            ),
                          ),
                          padding: const EdgeInsets.all(4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: WScaleAnimation(
                                  onTap: () {
                                    showMusicOptions(context);
                                  },
                                  child: AppIcons.dots.svg(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Mistake",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Rauf & Faik",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   width: double.infinity,
          //   height: 220,
          //   child: ListView.separated(
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) => SizedBox(
          //       width: MediaQuery.sizeOf(context).width - 48,
          //       child: Column(
          //         children: List.generate(
          //           3,
          //           (index) => ListTile(
          //             contentPadding: const EdgeInsets.only(left: 16, right: 0),
          //             onTap: () {
          //               context.push(AppRoutePath.music);
          //             },
          //             leading: Container(
          //               height: 56,
          //               width: 56,
          //               decoration: BoxDecoration(
          //                 color: white,
          //                 borderRadius: BorderRadius.circular(8),
          //               ),
          //             ),
          //             textColor: white,
          //             title: const Text("Mistake"),
          //             subtitle: const Text("Rauf & Faik"),
          //             trailing: IconButton(
          //               onPressed: () {},
          //               icon: AppIcons.dots.svg(),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     separatorBuilder: (context, index) => const SizedBox(width: 16),
          //     itemCount: 12,
          //   ),
          // ),

          MoreTitle(
            title: 'Плейлист по жанру',
            onPressed: () {
              context.push(AppRoutePath.playlistGenre);
            },
          ),
          SizedBox(
            width: double.infinity,
            height: 144,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => Container(
                width: 144,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: blue,
                  image: DecorationImage(
                    image: AssetImage(playlistByGenre[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: playlistByGenre.length,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Микс по артистам",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => SizedBox(
                width: 144,
                child: Column(
                  children: [
                    Container(
                      height: 144,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(artist[index]),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
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
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: artist.length,
            ),
          ),
          MoreTitle(
            title: 'Топ-чарты',
            onPressed: () {
              context.push(AppRoutePath.topCharty);
            },
          ),
          ...List.generate(
            5,
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
                      image: const DecorationImage(
                        image: AssetImage(AppImages.image_9),
                        fit: BoxFit.cover,
                      ),
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
          MoreTitle(
            title: 'Плейлисты',
            onPressed: () {
              context.push(AppRoutePath.karaokePlaylist);
            },
          ),
          SizedBox(
            width: double.infinity,
            height: 228,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => SizedBox(
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: const DecorationImage(
                            image: AssetImage(AppImages.throne),
                            fit: BoxFit.cover,
                          ),
                        ),
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
                    ),
                    const Text(
                      "113 треков",
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
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Вы недавно слушали",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 204,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemBuilder: (context, index) => SizedBox(
                width: 144,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: const DecorationImage(
                            image: AssetImage(AppImages.throne),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Mistake",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Rauf & Faik",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class MoreTitle extends StatelessWidget {
  const MoreTitle({super.key, required this.title, required this.onPressed});
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 14, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: white,
            ),
          ),
          WScaleAnimation(
            onTap: onPressed,
            child: Row(
              children: [
                Text(
                  "Все",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: white.withOpacity(.6),
                  ),
                ),
                AppIcons.arrowRight.svg(color: white.withOpacity(.6))
              ],
            ),
          )
        ],
      ),
    );
  }
}
