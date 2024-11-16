import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
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
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppImages.radio),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WScaleAnimation(
                      onTap: () {},
                      child: SizedBox(
                        height: 32,
                        child: AppIcons.equalizer.svg(),
                      ),
                    ),
                    WScaleAnimation(
                      onTap: () {},
                      child: SizedBox(
                        height: 80,
                        child: AppIcons.pausa.svg(),
                      ),
                    ),
                    WScaleAnimation(
                      onTap: () {},
                      child: SizedBox(
                        height: 32,
                        child: AppIcons.share.svg(),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: RichText(
                    text: const TextSpan(
                      text: "Программы эфира ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF),
                      ),
                      children: [
                        TextSpan(
                          text: "Прослушанные песни",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFB5B5B5),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
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
                image: const DecorationImage(
                  image: AssetImage(AppImages.image_9),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
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
