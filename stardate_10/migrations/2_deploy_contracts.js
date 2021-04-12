const SuperStrings = artifacts.require("./SuperString.sol");
const Fibonacci = artifacts.require("./Fibonacci.sol");

module.exports = function(deployer) {
  deployer.deploy(SuperStrings);
  deployer.deploy(Fibonacci);
};
