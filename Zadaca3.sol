// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;
/*
Треба да се испрограмира следната задача:

1. Направете library со следните функции:

addPerson – address, name, surname

addCompany – address, name


2. Направете inteface со следните функции:

addPerson – address, name, surname

addCompany – address, name

getPerson – address

getCompany – address


3. Направете contract кој го имплементира 
интерфејсот од точка 2 со функциите од библиотеката од точка 1.


4. Направете два events кои се фрлаат при креирање на Person и Company.

*/
struct Person{
     string name;
     string surname;
     address adresa;
     
}
struct Company{
     string name;
     string adresa;

}


interface interfejs{
//all functions must be external
function addPerson(address  adresa, string memory name, string memory surname) external;
function addCompany(address adresa, string memory name) external;
function getPerson(address adresa) external;
function getCompany(address adresa) external;
}

library Library{
    
event DodavanjeNaPerson( address adresa, string  Ime); // Event
function addPerson(address adresa, string memory name, string memory surname)public{
    emit DodavanjeNaPerson(adresa,name);
    

person_mapa[adresa]=name;
}

event DodavanjeNaCompany(address adresa, string name);
function addCompany(address adresa, string memory name)public{
    emit DodavanjeNaCompany(adresa,name);
company_mapa[adresa] = name;

 }
}
contract Zadaca3_192063 is interfejs{


using Library for Zadaca3_192063;
 
mapping(address =>string)  person_mapa;

 mapping(address =>string)   company_mapa;




}

