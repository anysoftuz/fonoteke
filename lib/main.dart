import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fonoteke/application/music/music_bloc.dart';
import 'package:fonoteke/assets/colors/colors.dart';
import 'package:fonoteke/infrastructure/services/app_init.dart';
import 'package:fonoteke/presentation/routes/app_routes.dart';
import 'package:just_audio_background/just_audio_background.dart';

void main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
  await AppInit.create;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MusicBloc(),
      child: MaterialApp.router(
        title: 'FONOTEKE',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          dialogTheme: const DialogTheme(
            backgroundColor: darkContainer,
            insetPadding: EdgeInsets.all(16),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: orang),
          appBarTheme: const AppBarTheme(
            shadowColor: dark,
            color: dark,
            surfaceTintColor: dark,
            scrolledUnderElevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: white),
            titleTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          dividerTheme: const DividerThemeData(color: borderColor),
          scaffoldBackgroundColor: dark,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: dark,
            selectedItemColor: orang,
            unselectedItemColor: grey,
          ),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouts.router,
      ),
    );
  }
}
