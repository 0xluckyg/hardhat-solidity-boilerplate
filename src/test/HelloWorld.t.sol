// https://kndrck.co/posts/hevm_seth_cheatsheet/
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;

/* ========== FORGE DEPENDENDCIES ========== */
import "../../lib/ds-test/src/test.sol";
import "./utils/Vm.sol";

import {HelloWorld} from "../contracts/HelloWorld.sol";

contract HelloWorld is DSTest {
    Vm internal constant vm = Vm(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);
    HelloWorld internal helloWorld;

    function setUp() public virtual {
        emit log("|==================== SET UP ====================|");        
    }

    function testHelloWorld() public {
        string helloWorld = helloWorldHelper();
        emit log_named_string("<|HelloWorld String|> ==", helloWorld);        
    }

    /* ========== HELPERS ========== */

    function helloWorldHelper() public view returns ( string helloString ) {        
        helloWorld = new HelloWorld();
        return helloWorld.helloWorld();
    }    
}