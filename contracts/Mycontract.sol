//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "hardhat/console.sol";

contract MyContract is ERC721 {

    constructor (string memory name, string memory symbol)
        ERC721(name, symbol) {
            console.log("Name is ", name);
            console.log("and NFT symbol is ",  symbol);
            console.log("Sender is ", msg.sender);
        }
}