pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Ainacoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Ainacoin(address _owner)  UpgradeableToken(_owner) {
    name = "Ainacoin";
    symbol = "ANC";
    totalSupply = 1000000000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}