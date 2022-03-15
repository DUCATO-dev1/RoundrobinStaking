//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/IDucatoFactory.sol";

contract DucatoFactoryMock is IDucatoFactory {
    mapping(address => bool) public override isPair;
    address[] public override allPairs;

    function addExchangePair(address pair) external {
        if (!isPair[pair]) {
            isPair[pair] = true;
            allPairs.push(pair);
        }
    }

    function feeTo() external view override returns (address) {
        revert();
    }

    function feeToSetter() external view override returns (address) {
        revert();
    }

    function getPair(address tokenA, address tokenB) external view override returns (address pair) {
        revert();
    }

    function allPairsLength() external view override returns (uint256) {
        return allPairs.length;
    }

    function createPair(address tokenA, address tokenB) external override returns (address pair) {
        revert();
    }

    function setFeeTo(address) external override {
        revert();
    }

    function setFeeToSetter(address) external override {
        revert();
    }
}
