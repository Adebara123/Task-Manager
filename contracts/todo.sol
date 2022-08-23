// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.9;

 contract todo {
     //  add new tasks, mark complete, delete tasks

     struct Tasks {
         string nameOfTask;
         bool complete;
     }

     mapping (uint => Tasks) tasks; 

     function addNewTask (uint ID, string memory _nameOfTask, bool _complete) public  {
        Tasks storage ts = tasks[ID];
        ts.nameOfTask = _nameOfTask;
        ts.complete = _complete;
     }

      function showTodo (uint ID) public view returns(Tasks memory) {
          return tasks[ID];
      }

      function deleteTask (uint ID) public view {
          Tasks memory ts = tasks[ID];
          delete ts;
      }

 }