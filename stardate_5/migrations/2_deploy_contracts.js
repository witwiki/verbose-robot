var myWallet = artifacts.require("./Wallet.sol");

module.exports = function(deployer, _network, accounts) {
  deployer.deploy(myWallet, accounts[0]);
};
