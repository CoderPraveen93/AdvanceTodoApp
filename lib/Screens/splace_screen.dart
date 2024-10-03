import 'package:advanced_todo_app/controllers/splace_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplaceScreen extends StatelessWidget {
  const SplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplaceScreenController screenController = Get.put(SplaceScreenController());

    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://lottie.host/585182bf-0dd4-4c2b-9656-8f1010e99e8c/Zb2RQMTb1S.json',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
