//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../tokens/vTokenSnapshot.sol";

contract vTokenSnapshotMock is vTokenSnapshot {
    constructor(uint256 totalSupply_) vToken("TT", "TT") {
        _mint(msg.sender, totalSupply_);
    }

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external {
        _burn(account, amount);
    }

    function snapshot() external returns (uint256) {
        return _snapshot();
    }
}
