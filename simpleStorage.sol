// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract simpleStore{
    //boolean, uint, int, address, bytes
    // MAX 32 bytes
    //uint8 - 256->default (Multiples of 8)
    uint256 public favoriteNumber;
    
    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    Person[] public person;
   

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //view and pure functions
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        person.push(Person(_favoriteNumber, _name));
    }
}