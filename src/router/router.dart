import 'package:get/get.dart';

import '../ec_page/rabbit/index.dart';

class Router {
  static List<GetPage> routers = [
    GetPage(
        name: '/rabbit',
        page: () => const RabbitPage(),
        binding: RabbitBinding()
    ),
];
}
