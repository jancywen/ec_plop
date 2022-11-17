
## 安装 plop 
1. 全局安装（建议使用）

```
npm install -g plop
```

2. 局部安装 -- 安装到项目

```
npm install --save-dev plop
``` 

这种方式要在 package.json 中 script 中增加脚本命令

```
"scripts": {
    "p": "plop"
 },
```

## 应用
1. 将 `generator`、 `plopfile.js` 复制到你的工程中，确保在同一级目录下
2. 修改 `generator` -> `index.js` 中 `tempPath`、`routerPath` 路径
3. 添加 gitignore
```
generator/
plopfile.js
```

```
ec_plop % plop ec_page
? 请输入模块名称!!! login
? 请输入page名称!!! mainLogin
? 请输入page描述!!! 主登录页
? 是否创建 binding 文件？ Yes
? 是否添加路由？ Yes
? 是否分文件夹创建？ No
✔  ++ /lib/page/main_login/main_login_page.dart
✔  ++ /lib/page/main_login/main_login_controller.dart
✔  ++ /lib/page/main_login/index.dart
✔  ++ /lib/page/main_login/main_login_binding.dart
✔  _+ /lib/router/router.dart
✔  _+ /lib/router/router.dart
✔  _+ /lib/router/router.dart```
```

router.dart 代码
```
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
```
参考： 

[前端工程化之plop的使用](https://blog.csdn.net/u012733501/article/details/106858603)

[前端神器Plop-自动生成模版](https://juejin.cn/post/6854573217446084616)