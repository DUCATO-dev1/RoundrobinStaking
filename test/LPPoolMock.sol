//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/ILPPool.sol";
import "../interfaces/ILPPoolSnapshot.sol";
import "../tokens/vToken.sol";
import "../tokens/vTokenSnapshot.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract LPPoolMock is ILPPool, vToken {
    constructor() vToken("LPMock", "lMock") {}

    function mint(uint256 amount) external {
        _mint(msg.sender, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function totalSupply() public view override(ILPPool, vToken) returns (uint256) {
        return vToken.totalSupply();
    }

    function balanceOf(address account) public view override(ILPPool, vToken) returns (uint256) {
        return vToken.balanceOf(account);
    }
}

contract LPPoolSnapshotMock is ILPPoolSnapshot, vTokenSnapshot {
    constructor() vToken("LPMock", "lMock") {}

    function snapshot() external override returns (uint256) {
        return _snapshot();
    }

    function getCurrentSnapshotId()
        public
        view
        override(ILPPoolSnapshot, vTokenSnapshot)
        returns (uint256)
    {
        return vTokenSnapshot.getCurrentSnapshotId();
    }

    function mint(uint256 amount) external {
        _mint(msg.sender, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function totalSupply() public view override(ILPPool, vToken) returns (uint256) {
        return vToken.totalSupply();
    }

    function balanceOf(address account) public view override(ILPPool, vToken) returns (uint256) {
        return vToken.balanceOf(account);
    }

    /**
     * @dev Retrieves the total supply at the `snapshotId` was created.
     */
    function totalSupplyAt(uint256 snapshotId)
        public
        view
        override(ILPPoolSnapshot, vTokenSnapshot)
        returns (uint256)
    {
        return vTokenSnapshot.totalSupplyAt(snapshotId);
    }

    /**
     * @dev Retrieves the balance of `account` at the `snapshotId` was created.
     */
    function balanceOfAt(address account, uint256 snapshotId)
        public
        view
        override(ILPPoolSnapshot, vTokenSnapshot)
        returns (uint256)
    {
        return vTokenSnapshot.balanceOfAt(account, snapshotId);
    }
}
