import 'package:get/get.dart';
import 'package:kmax_ui/kmax_ui.dart';

class MainLoginController extends PageStateController {

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