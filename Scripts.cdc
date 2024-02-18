import SomeContract from 0x01

pub fun main() {
    /**************/
    /*** AREA 4 ***/
    /**************/

    // Accessing the contract and its members
    let contractRef = getAccount(0x01).getCapability<&SomeContract.SomeStruct>(SomeContract.testStruct)!
    let contract = contractRef.borrow()

    // Accessing variables
    let a = contract.a // Readable in all scopes
    let b = contract.b // Readable in all scopes, writable in scope 1
    let c = contract.c // Readable in all scopes, writable in scope 1, 2, 3
    let d = contract.d // Readable and writable only in scope 1
    let e = contract.e // Readable in all scopes, writable in scope 2

    // Calling functions
    contract.publicFunc() // Callable in all scopes
    contract.contractFunc() // Callable in scope 1, 2, 3
    contract.privateFunc() // Callable only in scope 1

    // Creating a resource
    let someResource <- SomeContract.createSomeResource() // Callable in all scopes
    let resourceFuncResult = someResource.resourceFunc() // Callable in scope 1, 2, 3, 4

    // Calling contract function
    SomeContract.questsAreFun() // Callable in all scopes
}
