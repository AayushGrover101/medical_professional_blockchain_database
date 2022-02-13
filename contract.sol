// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract Database {

    struct MedicalProfessionals {
        uint id;
        string name;
        string govId;
        string expDate;
        string certDate;
        string certTitle;
        string notes;
    }

    // mapping
    mapping (uint => MedicalProfessionals) public professionals;
    uint public medicalProfessionalCount;


    // adding datapoints
    function addDatapoint(string memory _name, string memory _govId, string memory _expDate, string memory _certDate, string memory _certTitle, string memory _notes) public {
        medicalProfessionalCount++;
        professionals[medicalProfessionalCount] = MedicalProfessionals(medicalProfessionalCount, _name, _govId, _expDate, _certDate, _certTitle, _notes);
    }

}
