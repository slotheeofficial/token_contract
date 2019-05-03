pragma solidity 0.5.0;

import "./SafeMath.sol";
import "./ERC20Pausable.sol";
import "./ERC20Detailed.sol";

contract GodxToken is ERC20Pausable, ERC20Detailed {

  constructor() ERC20Detailed("Godx", "GTX", 18) public {
    _totalSupply = 2000 * 10 ** 18;

    _balances[msg.sender] = _totalSupply;
    
  }  
}
