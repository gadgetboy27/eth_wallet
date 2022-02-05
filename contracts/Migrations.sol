// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21 <0.9.0;

contract Migrations {
    address public owner = msg.sender;
    uint public last_completed_migration;

    

    modifier restricted() {
        require (msg.sender == owner); _;
    }

    function setCompleted(uint completed) public restricted {
        last_completed_migration = completed;
    }

    function upgrade(address _new_address) public restricted {
        owner = _new_address;
    }
}

