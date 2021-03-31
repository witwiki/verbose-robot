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
    uint public amountToPay;
    uint constant public PAYOUTS = 10;
    uint constant public INTERVALS = 10;
    uint public settledPayouts;

    constructor(
        address _lawyer,
        address payable _beneficiary,
        uint dateToTransfer
    ) payable public {
        lawyer = _lawyer;
        beneficiary = _beneficiary;
        transferDate = now + dateToTransfer;
        amountToPay = msg.value / PAYOUTS;
    }

    function transferDeed() public {
        // require the right lawyer
        require(msg.sender == lawyer, 'Not the right Arbiter');
        // require the right time to transfer
        require(now >= transferDate, 'Too early for transfer');
        //  require if all payouts are paid
        require(settledPayouts < PAYOUTS, 'All Payouts have been settled');

        // calculate payouts left
        uint payoutsLeft = (now - transferDate) / INTERVALS;
        //  payouts due
        uint payoutsDue = payoutsLeft - settledPayouts;
        //  check if total payout due is bigger than total payouts
        payoutsDue = (payoutsDue + settledPayouts) > PAYOUTS ? (PAYOUTS - settledPayouts) : payoutsDue;
        //  add any remaing due payouts to the settle payouts
        settledPayouts += payoutsDue;
        //  transfer al due payout value to beneficiary
        beneficiary.transfer(payoutsDue * amountToPay);
    }

}