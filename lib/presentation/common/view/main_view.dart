import 'package:flutter/material.dart';
import 'package:fonoteke/assets/assets/icons.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:go_router/go_router.dart';

class MainView extends StatefulWidget {
  const MainView({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  void _onTap(BuildContext context, int index) {
    debugPrint("NIma gap $index");
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: orang,
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (index) => _onTap(context, index),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: AppIcons.music.svg(),
            label: "Для вас",
            activeIcon: AppIcons.note.svg(),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.radio.svg(),
            label: "Радио",
            activeIcon: AppIcons.radioActive.svg(),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.microphone.svg(),
            label: "Караоке",
            activeIcon: AppIcons.microphoneActive.svg(),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.playlist.svg(),
            label: "Коллекция",
            activeIcon: AppIcons.playlistActive.svg(),
          ),
        ],
      ),
    );
  }
}
