import 'package:get/get.dart';
import '../controller/shop_info_controller.dart';

class ShopInfoBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ShopInfoController());
  }
}