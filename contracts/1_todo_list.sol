// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract  ToDOList {

    struct toDo{
        uint id;
        string name;
    }

    mapping(address => toDo) public toDoStruct;

    uint count = 0;
    address[] public toDoArr;

    function addTodoItems(string memory _name) public{
        // toDoArr.push("001", "Test for ToDo", block.timestamp, true );
        toDoStruct[msg.sender].id = count;
        toDoStruct[msg.sender].name = _name;
        toDoArr.push(msg.sender);
        count += 1;
    }

    function getName() public{
        // uint len = toDoArr.length;
        // string[] memory arr;
        // for(uint i=0; i<len; i++){
        //     arr.push(toDoArr[i].name);
        // }
        address me;
        console.log("test1", msg.sender);
        console.log("test2",  me);
    }
}