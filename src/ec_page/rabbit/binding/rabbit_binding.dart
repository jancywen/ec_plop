import 'package:get/get.dart';
import '../controller/rabbit_controller.dart';

class RabbitBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(RabbitController());
  }
}