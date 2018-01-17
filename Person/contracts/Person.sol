pragma solidity ^0.4.4;
contract Person {
    mapping(int => string) PersonName;
    function AddPerson(int id, string name) {
        string storage db = PersonName[id];
        string memory nil = "";
        if (!stringsEqual(db, nil)) {
            revert();
        } else {
            PersonName[id] = name;
        }
    }

    function GetPerson(int id) public returns (string) {
        return PersonName[id];
    }

    function UpdatePerson(int id, string newName) {
        PersonName[id] = newName;
    }

    function stringsEqual(string storage _a, string memory _b) internal returns (bool) {
		bytes storage a = bytes(_a);
		bytes memory b = bytes(_b);
		if (a.length != b.length) {
			return false;
        }
		// @todo unroll this loop
		for (uint i = 0; i < a.length; i ++) {
			if (a[i] != b[i]) {
				return false;
            }
        }
		return true;
	}
}