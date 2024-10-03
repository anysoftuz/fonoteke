import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/common/widgets/w_button.dart';

class PremiumSubscriptionView extends StatefulWidget {
  const PremiumSubscriptionView({super.key});

  @override
  State<PremiumSubscriptionView> createState() =>
      _PremiumSubscriptionViewState();
}

class _PremiumSubscriptionViewState extends State<PremiumSubscriptionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Премиальная подписка")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: darkContainer,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                    child: Text(
                      "Зачем подписываться на премиум?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ),
                  ),
                  const Divider(height: 1),
                  WInfoTile(
                    title: "Прослушивание музыки без рекламы",
                    icon: AppIcons.trumpet.svg(height: 32),
                  ),
                  WInfoTile(
                    title: "Можно скачать для прослушиваниябез интернета",
                    icon: AppIcons.bankCheckmarkCircle.svg(),
                  ),
                  WInfoTile(
                    title: "Высокое качество звука",
                    icon: AppIcons.hqBorder.svg(height: 32),
                  ),
                  WInfoTile(
                    title:
                        "Доступ для переключения любого трека в режим караоке",
                    icon: AppIcons.microphone.svg(color: white, height: 32),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            WButton(
              onTap: () {},
              gradient: wgradient,
              text: "Поробувать бесплатно",
              textColor: white,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "29 000 сум со второго месяца",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: white.withOpacity(.5),
                ),
              ),
            ),
            Text(
              """При подтверждении покупки оплата произойдёт автоматически с Вашей учётной записи в Google Play
неиспользованная часть бесплатного пробного периода аннулируется после приобретения подписки. 

Подписка продлевается автоматически, если автопродление не отключено за 24 часа до окончания оплаченного периода. При отмене подписки, её действие сохраняется до конца оплаченного
периода. Возврат платежа за текущую подписку невозможен, отмена подписки произойдёт после окончания текущего подписного периода. Удаление приложения не прекращает действие подписки.

Вы можете управлять подпиской или отключить автопродление в настройках своей учётной записи Google Play.

Условия использования и Правила хранения личной
информации""",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: white.withOpacity(.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WInfoTile extends StatelessWidget {
  const WInfoTile({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
