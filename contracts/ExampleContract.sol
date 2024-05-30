// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*contract ERC20Token {
    address public banker ;//= 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    mapping(address => uint256) public balances;
    function setBanker(address _addr)public{
        banker=_addr;
    }

    function setSomeonesBalance(address owner, uint256 amount) public {
        if (owner == banker) {
            balances[owner] = amount;
        }
        revert("not account owner");
    }

    function transferTokensBetweenAddresses(address sender, address receiver, uint256 amount) public {
        if (sender == banker) {
            balances[sender] -= amount;   // deduct/debit the sender's balance
            balances[receiver] += amount; // credit the reciever's balance
        }
        revert("not account owner");
    }
}*/


contract ERC20 {
    address public banker = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    mapping(address => uint256) public balances;

    function setSomeonesBalance(address owner, uint256 amount) public {
       // if (msg.sender == banker) {
            require(msg.sender==banker("not banker"));
            balances[owner] = amount;
        }
        
    
        // do nothing
    }

    function transfer(address receiver, uint256 amount) public {
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
    }
}




