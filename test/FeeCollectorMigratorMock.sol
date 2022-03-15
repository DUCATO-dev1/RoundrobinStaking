//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/fee/IFeeCollector.sol";

contract FeeCollectorMigratorMock is IFeeCollectorMigrator {
    event Migrated(address from, address token, uint256 fee);

    function migrate(
        address from,
        address token,
        uint256 fee
    ) external override {
        emit Migrated(from, token, fee);
    }
}
