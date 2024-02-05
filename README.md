# Access-Control

## SomeContract Move Contract

This Move contract, named SomeContract, serves to illustrate various aspects of Cadence syntax, including structures, functions, access modifiers, and resources. It contains a struct (SomeStruct) with variables and functions, as well as a resource (SomeResource) with associated functions.

## Overview

- **SomeContract:** The primary contract defining SomeStruct, functions, and a resource.
- **SomeStruct:**
  - **Variables:**
    - `a`: Can be read and modified from anywhere.
    - `b`: Can be read and modified from anywhere.
    - `c`: Can be read from anywhere but modified only within the contract.
    - `d`: Can be read and modified only within the struct.
  - **Functions:**
    - `publicFunc()`: Public function that can be called from anywhere.
    - `contractFunc()`: Function with contract-level access, callable from within the contract.
    - `selfFunc()`: Function with self-level access, callable from within the struct.

- **SomeResource:**
  - **Variables:**
    - `e`: An integer variable.
  - **Functions:**
    - `resourceFunc()`: Function demonstrating the usage of the resource.

## Usage

### Initialization

To initialize the contract:

```cadence
self.testStruct = SomeStruct()

// Area 1: structFunc
testStruct.a = "2"
let variableA = testStruct.a

// Area 2: resourceFunc
SomeContract.testStruct.a = "2"
let variableA = SomeContract.testStruct.a

// Area 3: questsAreFun
questsAreFun()

// Area 4: createSomeResource
createSomeResource()
```

### Areas

- **Area 1:** Demonstrates accessing and modifying variables within the structFunc.
- **Area 2:** Illustrates accessing and modifying variables within the resourceFunc.
- **Area 3:** Shows function calls within the questsAreFun.
- **Area 4:** Demonstrates the creation of a resource within the createSomeResource function.

## Notes

- This contract showcases the usage of different access modifiers within Cadence, including public, contract-level, and self-level.
- The structure and resource design highlight the encapsulation of data and functions within Cadence contracts, enabling secure and structured smart contract development.

Feel free to explore and experiment with the provided contract and script to gain a deeper understanding of Cadence syntax and functionality. Happy coding!
