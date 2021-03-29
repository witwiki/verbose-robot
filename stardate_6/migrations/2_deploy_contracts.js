var SplitPay = artifacts.require("./SplitPay.sol");

module.exports = function(deployer) {
  deployer.deploy(SplitPay);
};
