import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/presentation/routes/app_routes_name.dart';
import 'package:go_router/go_router.dart';

class SaveView extends StatefulWidget {
  const SaveView({super.key});

  @override
  State<SaveView> createState() => _SaveViewState();
}

class _SaveViewState extends State<SaveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Загруженное"),
        actions: [
          IconButton(
            onPressed: () {
              context.push(AppRoutePath.search);
            },
            icon: AppIcons.search.svg(),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) => ListTile(
          contentPadding: const EdgeInsets.only(left: 16, right: 0),
          leading: Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: white,
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
                icon: AppIcons.bankCheckmarkCircle.svg(color: orang),
              ),
              IconButton(
                onPressed: () {},
                icon: AppIcons.dots.svg(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
