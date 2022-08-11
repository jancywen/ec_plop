///
/// 首页
///

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ec_ui/ec_ui.dart';
import '../controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return CommonScaffold(
        appTitle: '首页',
        leading: Container(),
        bodyWidget: emptyBuild(
            controller.emptyController,
            () => Container()));
  }
}