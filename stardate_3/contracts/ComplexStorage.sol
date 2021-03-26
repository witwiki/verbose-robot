// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract ComplexStorage {
  uint[] public storedData;

  function add(uint dataPt) public {
    storedData.push(dataPt);
  }

  function get(uint dataPt) view public returns(uint) {
    return storedData[dataPt];
  }

  function getAll() view public returns(uint[] memory) {
    return storedData;
  }

  function getLength() view public returns(uint) {
    return storedData.length;
  }

}
