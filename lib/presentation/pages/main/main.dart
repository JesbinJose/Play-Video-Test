import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/presentation/pages/settings/settings.dart';
import 'package:video_player/presentation/widgets/bottom_nav_bar.dart';
import 'package:video_player/presentation/pages/favourite/favourite.dart';
import 'package:video_player/presentation/pages/home/home.dart';
import 'package:video_player/presentation/pages/playlist/playlist.dart';
import 'package:video_player/presentation/widgets/custom_background.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final ValueNotifier<int> currentPage = ValueNotifier(0);
  final ValueNotifier<bool> isGrid = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeScreen(isGrid: isGrid),
      FavoriteScreen(),
      PlaylistScreen(),
      SettingsScreen(),
    ];
    return Scaffold(
      body: AnimatedGradientContainer(
        child: Stack(
          children: [
            ValueListenableBuilder(
              valueListenable: currentPage,
              builder: (context, value, child) => pages[value],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 350,
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: context.theme.cardColor,
                ),
                child: MyBottomNavBar(
                  currentPage: currentPage,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
