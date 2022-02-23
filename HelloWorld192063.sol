// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;


contract HelloWorld192063{

 string public poraka;


constructor (string memory newPoraka)public {
    poraka=newPoraka;
}

 function getResult() public view returns(string memory) {
    return poraka;
 }


}
