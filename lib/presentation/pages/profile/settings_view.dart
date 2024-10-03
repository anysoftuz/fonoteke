import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  ValueNotifier<bool> valueNotifier = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Настройки"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: AppIcons.logout.svg(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Общие",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Музыка без остановки',
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Text(
                'Когда ваша музыка заканчивается, включаем похожую в Моей волне',
                style: TextStyle(
                  color: white.withOpacity(.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: ValueListenableBuilder(
                valueListenable: valueNotifier,
                builder: (context, _, __) {
                  return Switch(
                    value: valueNotifier.value,
                    activeTrackColor: orang,
                    onChanged: (value) {
                      valueNotifier.value = value;
                    },
                  );
                },
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Кроссфейд',
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Text(
                'Плавные переходы между треками',
                style: TextStyle(
                  color: white.withOpacity(.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: ValueListenableBuilder(
                valueListenable: valueNotifier,
                builder: (context, _, __) {
                  return Switch(
                    value: valueNotifier.value,
                    activeTrackColor: orang,
                    onChanged: (value) {
                      valueNotifier.value = value;
                    },
                  );
                },
              ),
            ),
            const Text(
              "Хранилище",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "Скачанные треки",
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Text(
                "Занято 205 мб",
                style: TextStyle(
                  color: white.withOpacity(.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: AppIcons.trash.svg(),
            ),
            const Text(
              "Помощь и обратный связь",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {},
              title: const Text(
                "Справка ",
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {},
              title: const Text(
                "О приложении ",
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
