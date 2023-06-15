// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Donation_pro{
    address public me;//創作者
    address public owner;//實況主
    mapping(address => uint256)donationList;//捐錢價目表
    bool flag = false;

    event Donate(address indexed sender,uint256 value);//捐款
    event withdraw(address indexed owner,uint256 value);//收款

    modifier onlyOwner(){
        require(msg.sender == owner,"Only owner can access this function");
        _;
    }


    constructor(){
        //將合約擁有者設定成建立合約的人
        me = msg.sender;
    }

     function set_Owener() public{//設定實況主(當設立過一次時，無法再次設立)
         if(flag == false)
            owner = msg.sender;
        flag = true;
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
    //創建者1成
    //實況主9成
    function Withdraw() onlyOwner public {
        address payable get = payable(owner);
        address payable receiver = payable(me);
        uint256 value = address(this).balance/10*9;
        uint256 Value = address(this).balance/10;
        get.transfer(value);
        receiver.transfer(Value);
        emit withdraw(get, value);
        emit withdraw(receiver, Value);
    }
}
