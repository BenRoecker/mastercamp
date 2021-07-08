// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList {
  uint public PrescriptionCount = 0;

  struct Prescription {
    uint id;
    string title;
    string content;
    string securitynumber;
    bool completed;
  }

  mapping(uint => Prescription) public Prescriptions;

  event PrescriptionCreated(
    uint id,
    string title,
    string content,
    string securitynumber,
    bool completed
  );

  event PrescriptionCompleted(
    uint id,
    bool completed
  );

  constructor() public {
    createPrescription("0", "lol","ah bien essayer");
  }

  function createPrescription(string memory _security, string memory _content, string memory _title) public {
    PrescriptionCount ++;
    Prescriptions[PrescriptionCount] = Prescription(PrescriptionCount,_security,_title, _content, false);
    emit PrescriptionCreated(PrescriptionCount,_security,_title, _content, false);
  }

  function toggleCompleted(uint _id) public {
    Prescription memory _Prescription = Prescriptions[_id];
    _Prescription.completed = !_Prescription.completed;
    Prescriptions[_id] = _Prescription;
    emit PrescriptionCompleted(_id, _Prescription.completed);
  }

  function get(string memory _number) public view returns(string memory, string memory,string memory) {
        Prescription memory _Prescription = Prescriptions[0];
        return (_number,_Prescription.content,_Prescription.title);
    }

}
