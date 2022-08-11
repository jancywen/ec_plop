import 'package:get/get.dart';
import 'package:ec_ui/ec_ui.dart';

class HomeController extends PageStateController {

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