//SPDX-License-Identifier: MIT

pragma solidity  ^0.8.34;

import {Script, console} from "forge-std/Script.sol";
import "../src/IBlockchainAcceleratorCertificate.sol";

contract MintCertificate is Script {

	function run() public {
		uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
		vm.startBroadcast(deployerPrivateKey);

		address contractaddress = 0x50AF8e60B4778C8e8f501051B99ffb4c04f9A574;
		IBlockchainAcceleratorCertificate(contractaddress).mintBAC();
		
		
		vm.stopBroadcast();
	}
}