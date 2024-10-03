import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/presentation/common/widgets/custom_text_field.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Поиск")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              suffixIcon: AppIcons.search.svg(),
              hintText: "Трек, альбом, исполнитель...",
            )
          ],
        ),
      ),
    );
  }
}
