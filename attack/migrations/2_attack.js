const AttackCoinFlip = artifacts.require("AttackCoinFlip");
const AttackTelephone = artifacts.require("AttackTelephone");

module.exports = function (deployer) {
  deployer.deploy(AttackCoinFlip);
  deployer.deploy(AttackTelephone);
};
