// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {

    uint256 public constant MAX_SUPPLY =
        100_000_000 * 10 ** 18;

    constructor()
        ERC20("binance", "bnb")
        Ownable(msg.sender)
    {
        _mint(
            msg.sender,
            MAX_SUPPLY
        );
    }
}