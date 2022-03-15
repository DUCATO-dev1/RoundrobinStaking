//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/IHookCallee.sol";

contract HookCalleeMock is IHookCallee {
    event LpProductHarvestEvent(address user);
    event LpProductUpdateEvent(address user);

    function lpProductHarvest(address user) external override {
        emit LpProductHarvestEvent(user);
    }

    function lpProductUpdate(address user) external override {
        emit LpProductUpdateEvent(user);
    }
}
