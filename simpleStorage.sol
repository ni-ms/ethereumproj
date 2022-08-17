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
   
mapping(string => uint256) public nameToFavoriteNumber;



    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //view and pure functions
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
        //Calldata (temp cant be modified), memory (temp can be mofied), storage( not temporary variables) [use only for struct array or mapping]
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        //no storage in the function definiton
        person.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
