// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract NumberChecker {
    // Function to check if a number is positive using revert
    function checkPositive(int256 number) public pure returns (bool) {
        if (!(number > 0)) {
            revert("Number must be positive");
        }
        return true;
    }

    // Function to check if a number is negative using require
    function checkNegative(int256 number) public pure returns (bool) {
        require(number < 0, "Number must be negative");
        return true;
    }

    // Function to check if a number is even using assert and require
    function checkEven(int256 number) public pure returns (bool) {
        assert(number >= 0); 
        require(number % 2 == 0, "Number must be even");
        return true;
    }
}
