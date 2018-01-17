var Migrations = artifacts.require("./Migrations.sol");
var Person = artifacts.require("./Person.sol");
module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Person);
};
