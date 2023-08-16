import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextView extends StatelessWidget {
  const NextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("data name from home: ${Get.parameters['name']}"),
    );
  }
}
