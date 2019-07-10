pragma solidity >=0.4.21 <0.6.0;

import "./ERC721.sol";
import "./ERC721Metadata.sol";
import "./MinterRole.sol";

contract MintableERC721 is ERC721, ERC721Metadata, MinterRole{

    /**
    * @dev Function to mint tokens.
    * @param to The address that will receive the minted tokens.
    * @param tokenId The token id to mint.
    * @param tokenURI The token URI of the minted token.
    * @return A boolean that indicates if the operation was successful.
    */
    function mintWithTokenURI(address to, uint256 tokenId, string memory tokenURI) public onlyMinter returns (bool) {
        _mint(to, tokenId);
        _setTokenURI(tokenId, tokenURI);
        return true;
    }
}
