var SimpleLunarDeed = artifacts.require("./SimpleLunarDeed.sol");

module.exports = function(deployer, _network, accounts) {
  deployer.deploy(SimpleLunarDeed, accounts[0], accounts[1], 60); // _lawyer address, _beneficiary address, duration
};
