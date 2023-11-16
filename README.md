# Wine Purchase Smart Contract

## Overview

This is a simple smart contract implemented in Solidity, a programming language for creating smart contracts on the Ethereum blockchain. The contract facilitates the purchase of wine, with age verification to ensure that buyers are at least 21 years old.

## Features

1. **Purchase Wine Functionality:**
   - Users can purchase wine by calling the `purchaseWine` function, providing their age and the quantity of wine they want to purchase.
   - The function checks that the quantity is greater than 0 and verifies the buyer's age using the `ageVerify` function.
   - The purchase details, including the quantity, are recorded for the buyer.

2. **Age Verification:**
   - The `ageVerify` function is a simple age verification mechanism. It ensures that the buyer is at least 21 years old.
   - If the buyer is not eligible due to age, the function reverts with an error message.

3. **Billing Calculation:**
   - Users can query their total bill by calling the `calculateBill` function.
   - The function checks whether the user has made a purchase and calculates the total bill based on the quantity and the predefined price per bottle of wine.

4. **Mappings:**
   - The contract uses three private mappings to store information:
      - `hasPurchased`: Records whether an address has made a purchase.
      - `purchaseCount`: Counts the number of purchases made by each address.
      - `wineQuantity`: Records the quantity of wine purchased by each address.

5. **Assertions:**
   - Assertions are used to ensure that critical conditions, such as the purchased quantity and purchase count, are always greater than 0.

6. **Constants:**
   - The contract defines a public constant `winePrice` representing the price of one bottle of wine.

## Usage

1. Deploy the smart contract to the Ethereum blockchain.
2. Call the `purchaseWine` function, providing your age and the quantity of wine you want to purchase.
3. Verify your age using the `ageVerify` function.
4. Query your total bill using the `calculateBill` function.


## Author

Pranav chaitanya

craj0314@gmail.com

## License

This smart contract is released under the MIT License.

