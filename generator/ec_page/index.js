
const componentExist = require('../utils/index.js');

module.exports = {
  description: '创建 EC_PAGE',
  prompts:[
    
    {
      type: 'input',
      name: 'pageName',
      message: '请输入page名称!',
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
      message: '是否创建 binding 文件?'
    },
  ],
  actions: (data) => {
    const { hasBinding} = data;
    const actions =[];
    let tempPath = './src/ec_page/{{ snakeCase pageName }}';

      actions.push({
        type:'add',
        path: `${tempPath}/page/{{ snakeCase pageName }}_page.dart`,
        templateFile: 'generator/ec_page/ec_page.dart.hbs'
      })
    
      actions.push({
        type:'add',
        path: `${tempPath}/controller/{{ snakeCase pageName }}_controller.dart`,
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
        path: `${tempPath}/binding/{{ snakeCase pageName }}_binding.dart`,
        templateFile: 'generator/ec_page/ec_binding.dart.hbs'
      })
    }
    
    return actions;
  }
}