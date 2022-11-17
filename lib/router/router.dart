import 'package:get/get.dart';

import '../ec_page/main_login/index.dart';

class Router {
  // 常量  插入识别'\n\n  static'

  /// 主登录页
  static const String mainLogin = '/loginMainLogin';


  static List<GetPage> routers = [
    GetPage(
        name: mainLogin,
        page: () => const MainLoginPage(),
        binding: MainLoginBinding()
    ),
];
}