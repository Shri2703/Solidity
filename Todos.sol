// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList{
    struct Task{
        string content;
        bool completed;
    }
    Task [] public tasks;

    function createTask(string memory _content)public {
        tasks.push(Task(_content,false));
    }

    function toogleTask(uint256 _index)public{
        require(_index < tasks.length,"Task index out of bound");
        tasks[_index].completed = !tasks[_index].completed;
    }

    function getTask(uint256 _index) public view returns(string memory,bool) {
        require(
            _index < tasks.length,"Task Index out og bounds"  );
            Task memory task=tasks[_index];
            return (task.content,task.completed);
    }
    function getTaskCount() public view returns(uint256){
        return tasks.length;
    }
}