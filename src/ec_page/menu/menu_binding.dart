import 'package:get/get.dart';
import 'menu_controller.dart';

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MenuController());
  }
}