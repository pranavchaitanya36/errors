// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract WinePurchase {
    mapping(address => bool) private hasPurchased;
    mapping(address => uint) private purchaseCount;
    mapping(address => uint) private wineQuantity;

    uint public winePrice = 100; // Assuming the price of one bottle of wine is 10 Ether

    function purchaseWine(uint _age, uint _quantity) external {
        require(_quantity > 0, "Quantity must be greater than 0");

        ageVerify(_age);

        purchaseCount[msg.sender] += 1;
        wineQuantity[msg.sender] += _quantity;
        hasPurchased[msg.sender] = true;

        assert(wineQuantity[msg.sender] > 0); // Assert that the quantity is greater than 0
        assert(purchaseCount[msg.sender] > 0);
    }

    function ageVerify(uint _age) public pure returns(bool) {
        if (_age >= 21) {
            // Age is greater than or equal to 21, return true
            return true;
        } else {
            // Age is less than 21, revert with an error message
            revert("Not Eligible to Purchase Wine");
        }
    }

    function calculateBill() external view returns (uint) {
        require(hasPurchased[msg.sender], "You haven't purchased any wine");

        uint totalBill = wineQuantity[msg.sender] * winePrice;
        return totalBill;
    }
}
