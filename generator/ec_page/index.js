

const componentExist = require('../utils/index.js');

module.exports = {
  description: '创建 EC_PAGE',
  prompts:[
    {
      type: 'input',
      name: 'moduleName',
      message: '请输入模块名称!!!',
    },
    {
      type: 'input',
      name: 'pageName',
      message: '请输入page名称!!!',
      validate: value => {
        if ((/.+/).test(value)) {
          return componentExist(value) ? ' page名已经存在' : true
        }
        return '请输入page名称'
      }
    },
    {
      type: 'confirm',
      name: 'hasBinding',
      default: true,
      message: '是否创建 binding 文件？'
    },
    {
      type: 'confirm',
      name: 'addRoutes',
      default: true,
      message: '是否添加路由？'
    },
    {
      type: 'confirm',
      name: 'useFolder',
      default: true,
      message: '是否分文件夹创建？'
    },
  ],
  actions: (data) => {
    const { hasBinding, addRoutes, useFolder} = data;
    const actions =[];
    // 路径
    let tempPath = './src/ec_page/{{ snakeCase pageName }}';
    let routerPath = './src/router/router.dart';

    actions.push({
      type:'add',
      path: useFolder ? `${tempPath}/page/{{ snakeCase pageName }}_page.dart` : `${tempPath}/{{ snakeCase pageName }}_page.dart`,
      templateFile: 'generator/ec_page/ec_page.dart.hbs'
    })
    
    actions.push({
      type:'add',
      path: useFolder ? `${tempPath}/controller/{{ snakeCase pageName }}_controller.dart` : `${tempPath}/{{ snakeCase pageName }}_controller.dart`,
      templateFile: 'generator/ec_page/ec_controller.dart.hbs'
    })
    actions.push({
      type:'add',
      path: `${tempPath}/index.dart`,
      templateFile: 'generator/ec_page/ec_index.dart.hbs'
    })

    if (hasBinding) {
      actions.push({
        type:'add',
        path: useFolder ? `${tempPath}/binding/{{ snakeCase pageName }}_binding.dart` : `${tempPath}/{{ snakeCase pageName }}_binding.dart`,
        templateFile: 'generator/ec_page/ec_binding.dart.hbs'
      })
    }
    
    // router.dart文件 增加路由
    if (addRoutes) {
      actions.push({
        type: 'append',
        pattern: /(?=(\nclass))/,
        path: routerPath,
        template: "import '../ec_page/{{ snakeCase pageName }}/index.dart';\n"
      })
      actions.push({
        type: 'append',
        pattern: /(?=(\]))/,
        path: routerPath,
        templateFile: 'generator/ec_page/ec_router.hbs' 
      })
    }
    
    return actions;
  }
}