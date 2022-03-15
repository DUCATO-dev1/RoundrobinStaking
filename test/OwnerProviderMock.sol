//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/misc/IOwnerProvider.sol";

contract OwnerProviderMock is IOwnerProvider {
    address public override owner;

    function setOwner(address owner_) external {
        owner = owner_;
    }
}
