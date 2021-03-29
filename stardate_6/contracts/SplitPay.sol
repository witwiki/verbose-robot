// SPDX-License-Identifier: MIT
//  Splitting Payments among friends
pragma solidity >=0.4.21 <0.7.0;

contract SplitPay {
  address public owner;

  // Send paymnets split equally to multiple addresses
  function sendSplitPayment(address payable[] memory toAddresses, uint[] memory amounts) payable public ownerOnly {
    require(toAddresses.length == amounts.length, "The number of addresses must be the same as the number of amounts");
    for (uint x = 0; x < toAddresses.length; x++) {
      toAddresses[x].transfer(amounts[x]);
    }
  }

  modifier ownerOnly() {
    require(msg.sender == owner);
    _;
  }

}
