const { ecPageGenerator } = require('./generator/index.js');
module.exports = (plop)=>{
  plop.setGenerator('ec_page', ecPageGenerator)
}