/*
 * @Author: yqj
 * @Date: 2020-07-23 11:00:57
 * @LastEditTime: 2020-07-23 11:01:18
 * @Description: 验证组件是否存在
 */ 

const fs = require('fs')
const path = require('path')
const pageComponents = fs.readdirSync(path.join(__dirname, '../../lib/page'))

const componentExist = comp => {
  return [...pageComponents].indexOf(comp) > -1
}

module.exports = componentExist;