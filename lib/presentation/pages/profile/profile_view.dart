import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/w_button.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:go_router/go_router.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Профиль"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Вы уверены, что хотите удалить свою учетную запись?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: white.withOpacity(.5),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: WButton(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              color: borderColor,
                              textColor: white,
                              text: "Нет",
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: WButton(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              text: "Да",
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            icon: AppIcons.logout.svg(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(radius: 40),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Asliddin Bozorov",
                          style: TextStyle(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "+998 91 124-5936",
                          style: TextStyle(
                            color: white.withOpacity(.5),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.push(AppRoutePath.profileEdit);
                  },
                  icon: AppIcons.edit.svg(),
                )
              ],
            ),
            const SizedBox(height: 16),
            WTileButton(
              onTap: () {},
              text: "Написать в поддержку",
            ),
            const SizedBox(height: 16),
            WTileButton(
              onTap: () {
                context.push(AppRoutePath.settings);
              },
              text: "Настройки",
            ),
            const SizedBox(height: 16),
            WTileButton(
              onTap: () {
                context.push(AppRoutePath.inviteFriend);
              },
              text: "Пригласи друга",
            ),
            const SizedBox(height: 16),
            WTileButton(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Вы уверены, что хотите удалить свою учетную запись?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: white.withOpacity(.5),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: WButton(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                color: borderColor,
                                textColor: white,
                                text: "Нет",
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: WButton(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                text: "Да",
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              text: "Удалить аккаунт",
            ),
            const SizedBox(height: 24),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.fromLTRB(36, 28, 36, 16),
                  decoration: BoxDecoration(
                    gradient: wgradient,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text(
                        "Премиальная подписка",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Слушайте музыку в высоком качестве без Интернета, получайте доступ к караоке для музыки",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      WButton(
                        width: 120,
                        height: 40,
                        onTap: () {
                          context.push(AppRoutePath.premiumSubscription);
                        },
                        color: white,
                        text: "Оформить",
                        textColor: dark,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: white,
                    child: AppIcons.crown.svg(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class WTileButton extends StatelessWidget {
  const WTileButton({super.key, required this.onTap, required this.text});
  final GestureTapCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: darkContainer,
          boxShadow: wboxShadow,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: white,
                ),
              ),
            ),
            AppIcons.arrowRight.svg(color: white),
          ],
        ),
      ),
    );
  }
}
