// SPDX-License-Identifier: MIT
pragma experimental ABIEncoderV2;

contract Ordonnance {
  uint public PrescriptionCount = 0;

  struct Prescription {
    uint id;
    string title;
    string content;
    string securitynumber;
    bool completed;
  }

  struct Rendu {
    string title;
    string comment;
  }

  mapping(uint => Prescription) public Prescriptions;

  event PrescriptionCreated(
    uint id,
    string title,
    string content,
    string securitynumber,
    bool completed
  );

  constructor () public {
    createPrescription('Titre', 'Commentaire', '345');
  }

  event PrescriptionCompleted(
    uint id,
    bool completed
  );

  function createPrescription(string memory _title, string memory _content, string memory _security) public {
    Prescriptions[PrescriptionCount] = Prescription(PrescriptionCount, _title, _content, _security, false);
    PrescriptionCount ++;
    emit PrescriptionCreated(PrescriptionCount,_title,_content, _security, false);
  }

  function toggleCompleted(uint _id) public {
    Prescription memory _Prescription = Prescriptions[_id];
    _Prescription.completed = !_Prescription.completed;
    Prescriptions[_id] = _Prescription;
    emit PrescriptionCompleted(_id, _Prescription.completed);
  }

  function get() public view returns(string memory, string memory) {
    Prescription memory test = Prescriptions[PrescriptionCount-1];
    return (test.title,test.content);
  }

  function getCount() public view returns(uint number) {
    return PrescriptionCount;
  }
}