// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Crud {
  struct User {
    uint id;
    string name;
  }
  User[] public users;
  uint public nxtId = 1;

  // creates a new user
  function createUser(string memory userName) public {
    users.push(User(nxtId, userName));
    nxtId++;
  }

  // reads (like a getter) user ID and name
  function readUser(uint id) view public returns(uint, string memory) {
    uint x = findUser(id);
    return(users[x].id, users[x].name);
  }

  // search user by id
  function findUser(uint id) view internal returns(uint) {
    for (uint i=0; i < users.length; i++) {
      if (users[i].id == id) {
        return i;
      }
    }
    revert('User does not exist');
  }

  //  updates user's details
  function updateDetails(uint i, string memory userName) public {
    uint y = findUser(i);
    users[y].id = i;
    users[y].name = userName;
  }

  function deleteUser(uint i) public {
    uint z = findUser(i);
    delete users[z];
  }

}
