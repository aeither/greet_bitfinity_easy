// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {Greeter} from "../src/Greeter.sol";

contract DeployScript is Script {
    Greeter public greeter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        greeter = new Greeter();

        vm.stopBroadcast();
    }
}