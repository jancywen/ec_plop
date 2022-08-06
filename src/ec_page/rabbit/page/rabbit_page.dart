
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ec_ui/ec_ui.dart';
import '../controller/rabbit_controller.dart';


class RabbitPage extends GetView<RabbitController> {
  const RabbitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonScaffold(
        appTitle: '店铺管理',
        leading: Container(),
        bodyWidget: emptyBuild(
            controller.emptyController,
            () => Container()));
  }
}