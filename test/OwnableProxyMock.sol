//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../misc/OwnableProxy.sol";

contract OwnableProxyMock is OwnableProxy {
    constructor() OwnableProxy() {}
}
