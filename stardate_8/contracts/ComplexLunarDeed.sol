// Clayming Space: MIT License

pragma solidity >=0.4.21 <0.7.0;

/// @title A more Complex Lunar Deed with multiple payouts
/// @author witwiki
/// @notice A Deed to Lunar Property that transfers the value of the Land to the Beneficiary where an arbitrar (aka Lawyer) is responsible for the transfer process.
/// @dev n/a

contract ComplexLunarDeed {
    address public lawyer;
    address payable public beneficiary;
    uint public transferDate;

    constructor(
        address _lawyer,
        address payable _beneficiary,
        uint dateToTransfer
    ) payable public {
        lawyer = _lawyer;
        beneficiary = _beneficiary;
        transferDate = now + dateToTransfer;
    }

    function transferDeed() public {
        // require the right lawyer
        require(msg.sender == lawyer, 'Not the right Arbiter');
        // require the right time to transfer
        require(now >= transferDate, 'Too early for transfer');
        // require the right amount
            // whether the payouts
        
    }

}