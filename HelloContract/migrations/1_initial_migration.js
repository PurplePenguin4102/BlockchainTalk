var Migrations = artifacts.require("./Migrations.sol");
var Hello = artifacts.require("./Hello.sol");
module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Hello);
};
