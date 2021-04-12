pragma solidity >=0.4.21 <0.7.0;

contract SuperString {

    function strLength(string memory str) pure public returns(uint) {
        bytes memory str_bytes = bytes(str);
        return str_bytes.length;        
    }

    function concatString(string memory strOne, string memory strTwo) pure public returns(string memory) {
        bytes memory str_byte_1 = bytes(strOne);
        bytes memory str_byte_2 = bytes(strTwo);
        string memory str = new string(str_byte_1.length + str_byte_2.length);
        bytes memory str_bytes = bytes(str);

        uint k = 0;
        for (uint i = 0; i < str_byte_1.length; i++) {
            str_bytes[k] = str_byte_1[i];
            k++;
        }
        for (uint j = 0; j < str_byte_2.length; j++) {
            str_bytes[k] = str_byte_2[j];
            k++;
        }

        //  convert back to string from byte code
        return string(str_bytes);
    }


}

