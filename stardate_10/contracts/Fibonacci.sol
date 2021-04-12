pragma solidity >=0.4.21 <0.7.0;

contract Fibonacci {

    function executeFib(uint num) pure external returns (uint) {
        if (num == 0) {
            return 0;
        } 
        uint f1 = 1;
        uint f2 = 1;
        for (uint j = 0; j < num; j++) {
            uint f = f1 + f2;
            f2 = f1;
            f1 = f;            
        }

        return f1;
    }
}