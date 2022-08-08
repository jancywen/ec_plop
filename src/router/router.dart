import 'package:get/get.dart';

import '../ec_page/product/index.dart';

import '../ec_page/menu/index.dart';

class Router {
  static List<GetPage> routers = [
    GetPage(
        name: '/shopProduct',
        page: () => const ProductPage(),
        binding: ProductBinding()
    ),

    GetPage(
        name: '/crmMenu',
        page: () => const MenuPage(),
        binding: MenuBinding()
    ),
];
}
