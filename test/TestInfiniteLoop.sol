// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/InfiniteLoopOracle.sol";
import "forge-std/Test.sol";

contract TestInfiniteLoop is Test {
    InfiniteLoopOracle oracle;
    PriceLedger ledger;

    function setUp() public {
        oracle = new InfiniteLoopOracle();
        ledger = new PriceLedger(address(oracle));
    }

    function testRecord() public {
        ledger.record();
    }
}
