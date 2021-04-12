const SuperStrings = artifacts.require("./SuperString.sol");

module.exports = function(deployer) {
  deployer.deploy(SuperStrings);
};
