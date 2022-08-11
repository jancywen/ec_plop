import 'package:get/get.dart';

import '../ec_page/home/index.dart';

import '../ec_page/address/index.dart';

class Router {
  // 常量  插入识别'\n\n  static'
  /// 首页
  static const String home = '/shopHome';

  /// 地址管理
  static const String address = '/shopAddress';


  static List<GetPage> routers = [
    GetPage(
        name: home,
        page: () => const HomePage(),
        binding: HomeBinding()
    ),

    GetPage(
        name: address,
        page: () => const AddressPage(),
        binding: AddressBinding()
    ),
];
}
