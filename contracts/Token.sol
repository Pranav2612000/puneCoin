// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PuneCoin is ERC20Capped, Ownable{
  constructor(uint256 cap) ERC20("PuneCoin", "PC") ERC20Capped(cap) {
  }

  function issueToken() public onlyOwner{
    _mint(msg.sender, 1000 * 10**18);
  }
}
