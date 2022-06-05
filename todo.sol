// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Todo {

    struct TodoStruct{
        uint count;
        string description;
        bool isCompleted;
    }

    uint todoCount = 0;

    mapping (uint => TodoStruct) public TodoLists;

      event TaskCreated(
    uint count,
    string content,
    bool isCompleted
  );

  event TaskCompleted(
    uint count,
    bool isCompleted
  );

    function createEvent(string memory _desc) public{
        todoCount++;
        TodoLists[todoCount] = TodoStruct(todoCount, _desc, false);
        emit TaskCreated(todoCount, _desc, false);
    }

    function completeTask(uint _count) public{
        TodoStruct memory _todo = TodoLists[_count];
        _todo.isCompleted = !_todo.isCompleted;
        TodoLists[_count] =  _todo;
        emit TaskCompleted(_count,_todo.isCompleted);
    }

}
