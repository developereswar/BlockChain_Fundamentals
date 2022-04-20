// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract MonthStore {
    mapping(uint => string) months;
    uint count = 0; 
    function addMonth(string memory _monthName) public {
        count = count + 1;
        months[count] = _monthName;
    }

    function getMonth(uint _num) public view returns(string memory, uint){
       uint chainStartTime = block.timestamp;
        return (months[_num], chainStartTime);
    }
}