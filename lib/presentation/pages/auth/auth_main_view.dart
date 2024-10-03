import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/w_button.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:go_router/go_router.dart';

class AuthMainView extends StatefulWidget {
  const AuthMainView({super.key});

  @override
  State<AuthMainView> createState() => _AuthMainViewState();
}

class _AuthMainViewState extends State<AuthMainView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: wgradientBlack),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            AppImages.logo.imgAsset(),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "У нас вся узбекская музыка самого лучшего качества!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: white.withOpacity(.8),
                ),
              ),
            ),
            const Spacer(),
            AppImages.piano.imgAsset(width: double.infinity, fit: BoxFit.cover),
            const Spacer(),
            WButton(
              onTap: () {},
              margin: const EdgeInsets.symmetric(horizontal: 16),
              text: "Регистрация",
            ),
            const SizedBox(height: 16),
            WButton(
              onTap: () {
                context.go(AppRoutePath.home);
              },
              textColor: white.withOpacity(.6),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              border: Border.all(color: borderColor),
              color: darkContainer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppImages.google.imgAsset(),
                  const SizedBox(width: 12),
                  Text(
                    "Продолжить с Google",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: white.withOpacity(.8),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "У вас есть аккаунт?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: white.withOpacity(.8),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Войти",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: red,
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
