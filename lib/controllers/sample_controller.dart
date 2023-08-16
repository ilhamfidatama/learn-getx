import 'package:get/get.dart';
import 'package:learn_getx/models/sample.dart';

class SampleController extends GetxController {
  final Rx<Sample> _sampleData = Sample().obs;

  Rx<Sample> getProperty() => _sampleData;

  void updateProperty(String name, String address) {
    _sampleData.value.name = name;
    _sampleData.value.address = address;
  }

  void updateName(String name) {
    _sampleData.value.name = name;
  }

  void updateAddress(String address) {
    _sampleData.value.address = address;
  }

  void updateSample() {
    update();
  }
}