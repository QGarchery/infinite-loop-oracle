// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IOracle {
    function price() external returns (uint256);
}

contract PriceLedger {
    uint256[] public allPrices;
    IOracle oracle;

    constructor(address _oracle) {
        oracle = IOracle(_oracle);
    }

    function record() public {
        allPrices.push(oracle.price());
    }
}
