pragma solidity 0.8.13

//Calling external functions
//We are calling from Contract A -> Contract B

ContractB.call()// ContractB.call(bytes4(sha3("runFunction(uint256)")), 100)
//Call function in External Contract
//Using Contract B scope
//Throws no error if it fails
//Returns true/false

ContractB.callcode()// ContractB.callcode(bytes4(sha3("runFunction(uint256)")), 100)
//Call function in External Contract
//Using Contract A scope
//Throws no error if it fails
//Returns true/false

ContractB.delegatecall()// ContractB.delegatecall(bytes4(sha3("runFunction(uint256)")), 100)
//Call function in External Contract
//Using Contract A scope
//Throws no error if it fails
//Returns true/false

ContractB.runFunction()// after dot is function name
//Call function in External Contract
//Using contract B scope
//Will throw if runFunction() throws
