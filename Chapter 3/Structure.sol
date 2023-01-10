/* This contract covers the following topics
 * Comments — Single, Multiple & Ethereum Natural Specification (Natspec)
 * Pragma directive
 * Imports
 * Contract Layouts
 * State variables — Access modifiers, constant, datatypes
 * Structs — defination, 
 * Modifiers
 * Events
 * Value and refernce types
 * Functions — visibily modifiers, behavior modifiers
 */
 //Above is a Multiple line comment
 //This is a single line comment

 // SPDX-License-Identifier: GPL-3.0

 // The pragma statement that specifies the compiler version the contract is to be compiled with
 // ^ means that this contract should be compiled with this or a higher version of compiler
 pragma solidity ^0.8.9;

 //to import files and libraries in your contract
 import "hardhat/console.sol";

 //Contract defination
 /* The layout of a contract is as follows
    • State variables
    • Structure definitions
    • Modifier definitions
    • Event declarations
    • Enumeration definitions
    • Function definitions
  */
 contract ContractStructure {
    //State variables
    //variables by default are private, int can hol -ve nums too
    int8 num_int = -8;
    // Public menas that it is visible to everyone
    uint8 public num = 9;
    // Private means that variable is only accessable within the contract, derived contracts cannot read it either
    string private str = "Solidity :)";
    // Internal means that variable is only accessable within the contract only derived contracts can view it
    // if you set assign value, the variable is assigned iits default false value i.e false for bool, 0 for uint and "" for string
    bool internal flag;
    //constant/immutable means the value cannot be changed.
    bytes32 public constant name = bytes32("Instagram");
    //other datatypes
    //Addresses
    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //Arrays — Holds data in sequential form, this is a dynamic array of static use uint8[2] percentages
    uint8[] percentages;
    //Mapping — this is used for one to one mapping for a key value pair
    mapping (uint256 => address) ids;

    //Structs — to define custom datatypes
    struct Student {
        string name;
        string seatNumber;
        Gender gender;
    }

    //Modifier — a function that will be executed before or after the execution of the target function.
    modifier onlyOwner() {
        require (msg.sender == owner, "caller not authorized");
        _; //represents the rest of the code of the target function
    }

    //Event
    event newUser (string name, uint256 id, address Address);

    //Enumeration — to hold constants
    enum Gender {male, female}

    // value types — bool, uint, address, bytes, enum
    // reference types — array, mapping, struct

    //Functions
    /* 4 visibility modifiers
     * public — within contract ✔, other contracts ✔, dervied contract ✔, user ✔
     * private — within contract ✔, other contracts ✘, dervied contract ✘, user ✘
     * internal — within contract ✔, other contracts ✘, dervied contract ✔, user ✘
     * external — within contract ✘, other contracts ✔, dervied contract ✘, user ✔
     */

     /* 4 behavior modifiers
     * pure — read from storage ✘, write to storage ✘, gas = 0
     * view — read from storage ✔, write to storage ✘, gas = 0
     * pure — read from storage ✔, write to storage ✘, gas = 0
     * payable — allows function to receive ether, gas != 0 
     */

    /* This function changes the number
     * Anyone can call it
     */
    function changeNum (uint8 _num) public {
        num = _num;
    }

    /* This function changes the owner
     * only owner can call it
     */
    function changeOwner (address _address) public onlyOwner {
        owner = _address;
    }
 }
