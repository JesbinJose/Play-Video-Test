import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/presentation/pages/main/main.dart';
import 'package:video_player/presentation/widgets/custom_background.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedGradientContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Play video',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFCCCCCC),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Unleash your inner cinephile', // Replace with your tagline
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () {
                    Get.to(MainScreen());
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_arrow),
                      Text('Start Now'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Start your next adventure with Videos',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
