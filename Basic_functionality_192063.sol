// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

contract Zadaca2_192063{

//1. Структура Person со атрибути: име, презиме
//definiranje na struktura
struct Person{
    string ime;
    string prezime;

}
//uint people=1;

//2. Мапа од ethereum адреса кон инстанца од Person
//hash mapa so key (adresa), value Person instanca
mapping(address =>Person) public mapa;

//5. Фрлање на Event при ставање на нов Person
 event DodavanjeNaPerson( address eth, string Ime); // Event



//3. Функција за ставање на нов Person, со влезни параметри име и презиме и како клуч адресата на 
//повикувачот
function addPerson(string memory newIme, string memory newPrezime, address adresaNewPerson)public{
//people++;
//instanciranje na objekt new_person
Person memory new_person = Person(newIme, newPrezime);
//persons.push(new_person);
//mapa[adresaNewPerson]=new_person;

//dodavanje na adresa(address) i Person vo hash mapata 
 mapa[adresaNewPerson] = new_person;
//povikuvanje na eventot
emit DodavanjeNaPerson(adresaNewPerson,newIme);
}




//4. Функција за земање на податоци за Person, со влезен параметар ethereum адреса
function getDataPerson(address ethereumAddress) public view returns(Person memory){
//vrakjanje na personot so adresa eth sto ja stavivme vo gornata funkcija
return mapa[ethereumAddress];
}



}

