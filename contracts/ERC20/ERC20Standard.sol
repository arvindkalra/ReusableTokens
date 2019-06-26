pragma solidity >=0.4.21 <0.6.0;

import "./BasicERC20.sol";
import "./DetailedERC20.sol";

contract ERC20Standard is BasicERC20, ERC20Detailed{
    constructor(string memory name, string memory symbol, uint8 decimals, uint256 totalSupply)
    ERC20Detailed(name, symbol, decimals)
    public
    {
        uint256 decimal = decimals;
        _balances[msg.sender] = totalSupply * 10 ** decimal;
        _totalSupply = totalSupply * 10 ** decimal;
    }
}
