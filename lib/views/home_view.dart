import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text("next button"),
        onPressed: () => {
          Get.toNamed("/next?name=joko")
        },
      ),
    );
  }
}
