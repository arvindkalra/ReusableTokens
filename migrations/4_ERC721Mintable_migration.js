const MintableERC721 = artifacts.require("ERC721/MintableERC721");

module.exports = function(deployer) {
    deployer.deploy(MintableERC721, "Mint721", "M721");
};
