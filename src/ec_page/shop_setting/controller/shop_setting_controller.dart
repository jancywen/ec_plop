import 'package:get/get.dart';
import 'package:ec_ui/ec_ui.dart';

class ShopSettingController extends PageStateController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emptyController.state(EmptyWidgetState.loading);
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    queryData();
  }

  queryData() {

    
  }
}