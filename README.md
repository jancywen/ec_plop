
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

```
ec_plop % plop ec_page
? 请输入page名称! product_detail
? 是否创建 binding 文件? Yes
✔  ++ /src/ec_page/product_detail/page/product_detail_page.dart
✔  ++ /src/ec_page/product_detail/controller/product_detail_controller.dart
✔  ++ /src/ec_page/product_detail/index.dart
✔  ++ /src/ec_page/product_detail/binding/product_detail_binding.dart
```

参考： 

[前端工程化之plop的使用](https://blog.csdn.net/u012733501/article/details/106858603)

[前端神器Plop-自动生成模版](https://juejin.cn/post/6854573217446084616)