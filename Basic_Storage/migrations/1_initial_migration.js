const Migrations = artifacts.require("BasicStorage");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
