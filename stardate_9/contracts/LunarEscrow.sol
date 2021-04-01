// Clayming Space: MIT License

pragma solidity >=0.4.21 <0.7.0;

/// @title An Escrow for a Lunar Property Purchase
/// @author witwiki
/// @notice Two parties buying a house on Luna with a middle-man agent Escrow.
/// @dev n/a

contract LunarEscrow {
    address payable public pBuyer;
    address public pSeller;
    uint saleValue;
    address public reAgent;

    constructor(
        address payable _pBuyer,
        address _pSeller,
        uint _salePrice
    ) payable public {
        pBuyer = _pBuyer;
        pSeller = _pSeller;
        reAgent = msg.sender;
        saleValue = _salePrice;
    }

    //  Get Balance of the address
    function getBalance() view public returns (uint) {
        return address(this).balance;        
    }

    //  Function to release funds from Escrow
    function releaseFunds() view public {
        // require the right Real Estate Agent
        require(msg.sender == reAgent, 'Not the right Real Estate Agent');
        // ensure all funds being released
        require(address(this).balance == saleValue, 'Not the full Sale Value has been sent to the Escrow');        
    }

    //  Function to deposit the funds into the Escrow
    function depositFunds() payable public {
        // require the depositer is the right address
        require(pBuyer == msg.sender, 'Not the right buyer');
        // require the deposit is not more than defined by the Escrow contract
        require(address(this).balance <= saleValue, 'Sale Value more than Escrow amount');
    }
}