// SPDX-License-Identifier: MIT
// My personal Bank with all my accounts needed for financial transactions
pragma solidity >=0.4.21 <0.7.0;

contract Wallet {
  address payable public walletOwnr;

  //  Defining the Wallet on Creation
  constructor(address payable _owner) public {
    walletOwnr = _owner;
  }

  //  Send Funds
  function sendFunds(address payable toSend, uint amount) payable public {
    // check is its the owner
    if (msg.sender == walletOwnr) {
      toSend.transfer(amount);
      return;
    }
    revert("Not the right owner");
  }

  //  Get Balance
  function getWalletBalance() view public returns (uint) {
    return address(this).balance;
  }

}
