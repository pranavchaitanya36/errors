# Number Checker Smart Contract

## Overview

This Solidity smart contract, named `NumberChecker`, provides functions to check various properties of signed integers. It utilizes `revert`, `require`, and `assert` statements to enforce conditions and ensure the validity of input numbers. The contract is designed to be a simple utility for verifying positive, negative, and even numbers.

## Features

### 1. Check Positive Number

- Function: `checkPositive(int256 number) public pure returns (bool)`
- Uses `revert` to ensure that the input number is positive.
- Returns `true` if the number is positive; otherwise, reverts with the message "Number must be positive."

### 2. Check Negative Number

- Function: `checkNegative(int256 number) public pure returns (bool)`
- Utilizes `require` to verify that the input number is negative.
- Returns `true` if the number is negative; otherwise, reverts with the message "Number must be negative."

### 3. Check Even Number

- Function: `checkEven(int256 number) public pure returns (bool)`
- Combines `assert` and `require` statements to check if the input number is even.
- Asserts that the number is non-negative and then requires that it is even.
- Returns `true` if the number is even; otherwise, reverts with the message "Number must be even."

## Usage

1. **Check Positive Number:**
   - Call the `checkPositive` function with an integer as an argument.
   - The function will return `true` if the number is positive; otherwise, it will revert with an error message.

2. **Check Negative Number:**
   - Use the `checkNegative` function by providing a signed integer as input.
   - The function returns `true` if the number is negative; otherwise, it reverts with an error message.

3. **Check Even Number:**
   - Call the `checkEven` function with an integer as an argument.
   - The function will return `true` if the number is even and non-negative; otherwise, it will revert with an error message.

## Error Handling

- **Revert:**
  - `revert` is used to handle situations where the condition for positivity is not met.
  - The error message provides information about the specific condition that caused the revert.

- **Require:**
  - `require` is employed to handle cases where the condition for negativity or evenness is not satisfied.
  - The error message specifies the required condition.

- **Assert:**
  - `assert` is used to ensure that the number is non-negative before checking for evenness.
  - If the assertion fails, it indicates a critical issue in the code.

## Author

Pranav chaitanya

craj0314@gmail.com

## License

This smart contract is released under the MIT License.

