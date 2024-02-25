import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/domain/funtions/functions.dart';
import 'package:video_player/presentation/pages/main/main.dart';
import 'package:video_player/presentation/pages/starter/starter_screen.dart';
import 'package:video_player/presentation/widgets/custom_background.dart';
import 'package:list_all_videos/list_all_videos.dart';
import 'package:video_player/vars.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyAppFunction().isStarter().then((value) async {
      if (value) {
        Data.videos = await ListAllVideos().getAllVideosPath();
        Get.off(MainScreen());
      } else {
        Get.off(const StartingScreen());
      }
    });
    return const Scaffold(
      body: AnimatedGradientContainer(
        child: Center(
          child: Text(
            'Play Video',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
