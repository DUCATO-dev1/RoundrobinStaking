//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Mock is ERC20 {
    constructor(uint256 totalSupply_) ERC20("TT", "TT") {
        _mint(msg.sender, totalSupply_);
    }
}
