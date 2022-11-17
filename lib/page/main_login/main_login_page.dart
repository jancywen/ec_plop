///
/// 主登录页
///

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmax_ui/kmax_ui.dart';
import 'main_login_controller.dart';

class MainLoginPage extends GetView<MainLoginController> {
  const MainLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return CommonScaffold(
        appTitle: '主登录页',
        leading: Container(),
        bodyWidget: emptyBuild(
            controller.emptyController,
            () => Container()));
  }
}