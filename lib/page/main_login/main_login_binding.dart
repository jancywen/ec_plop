import 'package:get/get.dart';
import 'main_login_controller.dart';

class MainLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainLoginController());
  }
}