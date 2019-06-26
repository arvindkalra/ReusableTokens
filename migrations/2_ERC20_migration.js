const ERC20Standard = artifacts.require("ERC20/ERC20Standard");

module.exports = function(deployer) {
    deployer.deploy(ERC20Standard, "ERCToken", "TOK", 18, 1000);
};
