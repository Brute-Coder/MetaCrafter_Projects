// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract uid_Checker {
     // this program will check if a given uid is valid or not
     // uid range is 1-99
     uint studentCount = 0 ;
     function Assert_UID (uint uid) public pure {
         assert(uid >= 1 && uid <= 99);
     }

     function  Student_Counter (uint uid) public returns (uint){
         if(uid < 1 || uid > 99 ){
          revert(" This is not a valid uid ");
         }
         return studentCount += 1;
     }

     function uid_req (uint uid) public pure returns(bool){
         require(uid >= 1 && uid <= 99 , "uid range should be in between 1-99");
         return true;
     }


}
