import 'package:get/get.dart';
import '../controller/shop_setting_controller.dart';

class ShopSettingBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ShopSettingController());
  }
}