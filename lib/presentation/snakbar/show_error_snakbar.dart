import 'package:flutter/material.dart';
import 'package:get/get.dart';

void unKnownErrorSnakBar(String body, String title) {
  Get.snackbar(
    title, // Title
    body, // Message
    duration: const Duration(seconds: 4),
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.grey,
    mainButton: TextButton(
      onPressed: () => Get.back(),
      child: const Text('OK',style: TextStyle(color: Colors.white),),
    ),
  );
}
