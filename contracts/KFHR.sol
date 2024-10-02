// SPDX-License-Identifier: MIT
// Web site kfhrostochek.ru
// Contact email support@kfhrostochek.ru
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KFHRostochek is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("KFH Rostochek", "KFHR")
        Ownable(initialOwner)
    {
        _mint(msg.sender, 100000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}