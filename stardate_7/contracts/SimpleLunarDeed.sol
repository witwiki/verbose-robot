// Clayming Space: MIT License

pragma solidity >=0.4.21 <0.7.0;

/// @title A Simple Lunar Deed
/// @author witwiki
/// @notice A simple Deed to Lunar Property that transfers the value of the Land to the Beneficiary where an arbitrar (aka Lawyer) is responsible for the transfer process.
/// @dev n/a

contract SimpleLunarDeed {
  address public lawyer;
  address payable public beneficiary;
  uint public transferDate;

  constructor(
    address _lawyer,
    address payable _beneficiary,
    uint dateToTransfer
  ) payable public
  {
    lawyer = _lawyer;
    beneficiary = _beneficiary;
    transferDate = now + dateToTransfer;
  }

  function transferDeed() public {
    require(msg.sender == lawyer, 'Not the right Arbitror');
    require(now >= transferDate, 'Too early for the Land Value Transfer');
    beneficiary.transfer(address(this).balance);
  }



}
