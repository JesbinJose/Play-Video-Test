import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_video/function/init.dart';
import 'package:video_player/presentation/pages/splash/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PlayVideoRender.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(useMaterial3: true).copyWith(
        hintColor: const Color(0xFFB2DFDB),
        focusColor: const Color(0xFFF7CAC9),
        cardColor: const Color.fromARGB(220, 200, 230, 201),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        hintColor: const Color.fromARGB(255, 2, 33, 121),
        focusColor: const Color(0xFF000000),
        cardColor: const Color.fromARGB(220, 10, 26, 121),
      ),
      themeMode: ThemeMode.dark,
      home: const SplashScreen(),
    );
  }
}
