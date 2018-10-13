// Update your migrations if you change the name of the contracts 
// or add new ones

var VotingSystem = artifacts.require("./VotingSystem.sol");

module.exports = function(deployer) {
  deployer.deploy(VotingSystem);
};
