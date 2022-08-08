import 'package:get/get.dart';
import 'package:ec_ui/ec_ui.dart';

class MenuController extends PageStateController {

  @override
  void onInit() {
    super.onInit();
    emptyController.state(EmptyWidgetState.loading);
  }

  @override
  void onReady() {
    super.onReady();
    queryData();
  }

  queryData() {

    
  }
}