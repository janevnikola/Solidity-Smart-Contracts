// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;


contract HelloWorld192063{

 string public poraka;
 int16 public broj1;
int16 public broj2; //16 byten integer?

constructor (string memory newPoraka)public {
    poraka=newPoraka;
    broj1=10;
    broj2=12;
}

 function getResult() public view returns(string memory) {
    return poraka;
 }
 
function sobiranje() public view returns(int16){
    return broj1+broj2;
}

}
