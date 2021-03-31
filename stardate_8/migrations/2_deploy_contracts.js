// const ConvertLib = artifacts.require("ConvertLib");
// const MetaCoin = artifacts.require("MetaCoin");
const ComplexLunarDeed = artifacts.require("ComplexLunarDeed");

module.exports = function(deployer, _network, accounts) {
  deployer.deploy(ComplexLunarDeed, accounts[0], accounts[1], 60);
  // deployer.deploy(ConvertLib);
  // deployer.link(ConvertLib, MetaCoin);
  // deployer.deploy(MetaCoin);
};
