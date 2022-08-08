
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

```
ec_plop % plop ec_page
? 请输入模块名称!!! shop
? 请输入page名称!!! product
? 是否创建 binding 文件？ Yes
? 是否添加路由？ Yes
? 是否分文件夹创建？ Yes
✔  ++ /src/ec_page/product/page/product_page.dart
✔  ++ /src/ec_page/product/controller/product_controller.dart
✔  ++ /src/ec_page/product/index.dart
✔  ++ /src/ec_page/product/binding/product_binding.dart
✔  _+ /src/router/router.dart
✔  _+ /src/router/router.dart
```

参考： 

[前端工程化之plop的使用](https://blog.csdn.net/u012733501/article/details/106858603)

[前端神器Plop-自动生成模版](https://juejin.cn/post/6854573217446084616)