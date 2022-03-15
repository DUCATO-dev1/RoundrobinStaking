//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../staking/SKHookCaller.sol";
import "./LPPoolMock.sol";

abstract contract SKHookCallerMock is SKHookCaller {
    function harvestLPReward(address user) external {
        _harvestLPReward(user);
    }

    function updateLPRewardDebt(address user) external {
        _updateLPRewardDebt(user);
    }

    function isOwner() public view override returns (bool) {
        return true;
    }

    function _msgSender() internal view override returns (address) {
        return msg.sender;
    }
}

contract SKLPHostHookCallerMock is SKHookCallerMock, LPPoolSnapshotMock {
    constructor() SKHookCaller() {}
}
