// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./PriceLedger.sol";

contract InfiniteLoopOracle {
    address public source = address(this); // uh oh

    function price() external returns (uint256) {
        return IOracle(source).price();
    }
}
