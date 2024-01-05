# ErrorHandlinginSolidity Contract

This is a Solidity smart contract that demonstrates different error handling techniques using `assert`, `revert`, and `require` functions.

## License

This contract is using the MIT License.

## Prerequisites

- Solidity ^0.8.18

## Contract Details

The `uid_Checker` contract provides the following functions:

### `Assert_UID`

- This function demonstrates the usage of the `assert` function.
- It takes a `uid` parameter and checks if it is not in the given range of our uid system by using `assert` statement.
- If the condition fails, it triggers an "Internal error" and aborts the execution.

### `Student_Counter`

- This function demonstrates the usage of the `revert` function.
- here if a valid uid is given then it increases the student_counter by one
- and if the valid uid is not given then the whole transaction is reverted back by printing the error statement
- wer have a `StudentCount` variable which is used to count all the valid uid

### `uid_req`

- This function demonstrates the usage of the `require` function.
- here the functions shows that a given uid is valid or not
- we have given a valid range in the require condition `{ 1-99 }`
- and if the given uid is not in the range than it will print a error
- otherwise it will send us a `true` bool statement  

## Usage

1. Make sure you have Solidity ^0.8.18 installed.
2. Compile and deploy the `ErrorHandling` contract to a supported Ethereum network.
3. Interact with the deployed contract by calling the available functions and providing the required parameters.
