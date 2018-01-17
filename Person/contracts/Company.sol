pragma solidity ^0.4.4;
contract IPerson {
    function AddPerson(int id, string name);
}

contract Company {
    int nextId = 0;
    function AddEmployee(string name) {
        IPerson Person = IPerson(0x123412341234);
        nextId = nextId + 1;
        int newId = newId;
        return Person.AddPerson(newId, name);
    }
}