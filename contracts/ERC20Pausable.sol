pragma solidity 0.5.0;

import "./ERC20.sol";
import "./Pauser.sol";

/**
 * @title Pausable token
 * @dev ERC20 modified with pausable transfers.
 */
contract ERC20Pausable is ERC20, Pauser {
    function transfer(address to, uint256 value) public onlyNotPaused returns (bool) {
        return super.transfer(to, value);
    }

    function transferFrom(address from, address to, uint256 value) public onlyNotPaused returns (bool) {
        return super.transferFrom(from, to, value);
    }

    function approve(address spender, uint256 value) public onlyNotPaused returns (bool) {
        return super.approve(spender, value);
    }

    function increaseAllowance(address spender, uint addedValue) public onlyNotPaused returns (bool success) {
        return super.increaseAllowance(spender, addedValue);
    }

    function decreaseAllowance(address spender, uint subtractedValue) public onlyNotPaused returns (bool success) {
        return super.decreaseAllowance(spender, subtractedValue);
    }
}