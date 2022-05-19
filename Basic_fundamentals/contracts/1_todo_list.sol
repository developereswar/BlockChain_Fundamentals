// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract  ToDOList {

    struct toDo{
        string item;
        bool status;
    }

    mapping(address => toDo[]) public toDoStruct;

    function createTodo(string memory _item) public{
        toDoStruct[msg.sender].push(toDo({item:_item, status: false}));
    }

    function getTodoList() external view returns(toDo[] memory){
      return toDoStruct[msg.sender];
    }
}