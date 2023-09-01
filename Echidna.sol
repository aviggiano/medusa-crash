// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "@crytic/properties/contracts/util/PropertiesHelper.sol";
import "./Deployer.sol";
import "./Governor.sol";

contract EchidnaTester is PropertiesAsserts {
    Deployer internal deployer;

    constructor() {
        deployer = new Deployer();

        bytes memory creationCode = type(Governor).creationCode;
        bytes memory args = abi.encode(address(this));

        address authority = deployer.deploy(
            deployer.AUTHORITY(),
            abi.encodePacked(creationCode, args)
        );
    }

    function test1p1eq2() public {
        assertEq(uint(1 + 1), 2, "1+1 should equal 2");
    }
}
