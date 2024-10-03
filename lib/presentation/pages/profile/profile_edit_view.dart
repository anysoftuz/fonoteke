import 'package:flutter/material.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/custom_text_field.dart';
import 'package:fonoteke/presentation/common/widgets/w_button.dart';

class ProfileEditView extends StatefulWidget {
  const ProfileEditView({super.key});

  @override
  State<ProfileEditView> createState() => _ProfileEditViewState();
}

class _ProfileEditViewState extends State<ProfileEditView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Редактирование")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: darkContainer,
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: white,
                ),
              ),
            ),
            CustomTextField(
              title: "Имя",
              hintText: "Имя",
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            CustomTextField(
              title: "Фамилия",
              hintText: "Фамилия",
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            CustomTextField(
              title: "Дата рождения",
              hintText: "Дата рождения",
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            CustomTextField(
              title: "Номер телефона",
              hintText: "Номер телефона",
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            WButton(
              onTap: () {},
              text: "Готово",
            ),
            const SizedBox(height: 16),
            const Text(
              'Личные данные используется при подачи запроса,но не влияют на результат поиска.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8B8F93),
              ),
            )
          ],
        ),
      ),
    );
  }
}
