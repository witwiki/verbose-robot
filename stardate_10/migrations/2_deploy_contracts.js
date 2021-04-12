// const ConvertLib = artifacts.require("ConvertLib");
// const MetaCoin = artifacts.require("MetaCoin");
const LunarEscrow = artifacts.require("LunarEscrow");

module.exports = function(deployer, _network, accounts) {
  deployer.deploy(LunarEscrow, accounts[0], accounts[1], 1000000);
  // deployer.deploy(ConvertLib);
  // deployer.link(ConvertLib, MetaCoin);
  // deployer.deploy(MetaCoin);
};
