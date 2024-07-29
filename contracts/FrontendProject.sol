// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract FrontendProject {
    uint8 public age;
    string public name;

    event SetAge(address indexed sender, uint8 val);

    event SetName(address indexed sender, string names);

    function setAge(uint8 _myAge) external {
        age = _myAge;

        emit SetAge(msg.sender, _myAge);
    }

    function setName(string memory _myName) external {
        name = _myName;

        emit SetName(msg.sender, _myName);
    }

    function getAge() public view returns (uint) {
        return age;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}
