import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controllers/sample_controller.dart';

class SampleView extends StatelessWidget {
  SampleView({Key? key}) : super(key: key);
  final SampleController sampleController = Get.put(SampleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Controller with child"),
      ),
      body: Column(
        children: [
          FormView(),
          ControllerView()
        ],
      )
    );
  }
}

class FormView extends StatelessWidget {

  FormView({Key? key}): super(key: key);
  final SampleController sampleController = Get.find<SampleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) => sampleController.updateName(value),
            decoration: const InputDecoration(
              label: Text("Name")
            ),
          ),
          TextFormField(
            onChanged: (value) => sampleController.updateAddress(value),
            decoration: const InputDecoration(
                label: Text("Address")
            ),
          ),
          TextButton(onPressed: () => sampleController.updateSample(), child: Text("update"))
        ],
      ),
    );
  }
}


class ControllerView extends StatelessWidget {
  ControllerView({Key? key}) : super(key: key);
  final SampleController sampleController = Get.find<SampleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<SampleController>(
        init: SampleController(),
        builder: (controller) => Column(
          children: [
            Text("name: ${controller.getProperty().value.name}"),
            Text("address: ${controller.getProperty().value.address}")
          ],
        ),
      )
    );
  }
}
