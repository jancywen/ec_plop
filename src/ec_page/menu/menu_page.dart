
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ec_ui/ec_ui.dart';
import 'menu_controller.dart';

class MenuPage extends GetView<MenuController> {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return CommonScaffold(
        appTitle: '店铺管理',
        leading: Container(),
        bodyWidget: emptyBuild(
            controller.emptyController,
            () => Container()));
  }
}