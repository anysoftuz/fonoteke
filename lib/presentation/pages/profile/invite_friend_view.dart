import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/assets/images.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/custom_text_field.dart';
import 'package:fonoteke/presentation/common/widgets/w_button.dart';

class InviteFriendView extends StatefulWidget {
  const InviteFriendView({super.key});

  @override
  State<InviteFriendView> createState() => _InviteFriendViewState();
}

class _InviteFriendViewState extends State<InviteFriendView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Пригласи друга")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            AppImages.inviteFriend.imgAsset(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "Делитесь музыкой иполучайте награды",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: white,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Пригласите друга и получите эксклюзивные бонусы! Используйте реферальную ссылку или промокод, чтобы пригласить друзей, и наслаждайтесь бесплатными месяцами премиум-подписки и доступом к специальным плейлистам.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: white,
              ),
            ),
            const SizedBox(height: 16),
            CustomTextField(
              hintText: "AAAAAA00",
              suffixIcon: AppIcons.copy.svg(),
            ),
            const SizedBox(height: 16),
            WButton(
              onTap: () {},
              text: "Пригласить по ссылке",
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Условия акции",
                style: TextStyle(color: red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
