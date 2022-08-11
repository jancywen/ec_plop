///
/// 地址管理
///

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ec_ui/ec_ui.dart';
import '../controller/address_controller.dart';

class AddressPage extends GetView<AddressController> {
  const AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return CommonScaffold(
        appTitle: '地址管理',
        leading: Container(),
        bodyWidget: emptyBuild(
            controller.emptyController,
            () => Container()));
  }
}