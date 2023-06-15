// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Donation{
    address public owner;
    mapping(address => uint256)donationList;

    event Donate(address indexed sender,uint256 value);//捐款(捐款人,價錢)
    event withdraw(address indexed owner,uint256 value);//收款(收款人,價錢)

    modifier onlyOwner(){
        require(msg.sender == owner,"Only owner can access this function");
        _;
    }
    constructor(){
        //將合約擁有者設定成建立合約的人
        owner = msg.sender;
    }

    //收捐款函式
    function donate() public payable{
        donationList[msg.sender] += msg.value;
        emit Donate(msg.sender,msg.value);
    }

    //查詢捐款總金額額度
    function getHistory()public view returns (uint256){
        return donationList[msg.sender];
    }

    //VIP等級
    function getRank() public view returns  (string memory){
        if(donationList[msg.sender] > 10 ether){
            return "UR";
        }
        else if(donationList[msg.sender] > 5 ether){
            return "SR";
        }
         else if(donationList[msg.sender] > 1 ether){
            return "R";
        }
         else if(donationList[msg.sender] > 0 ether){
            return "N";
        }
        else return "None";
    }

    //涵式提領
    function Withdraw() onlyOwner public {
        address payable get = payable(owner);
        uint256 value = address(this).balance;
        get.transfer(value);
        emit withdraw(get, value);
    }
}
