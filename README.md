# Donation專題解釋
1. 創建合約時將合約擁有者設定成建立合約的人(實況主設成owner)  
eg. 假設0x5B38Da6a701c568545dCfcB03FcB875f56beddC4是建立合約者  
![image](https://github.com/10360555iamnn/-/assets/95529963/1e7b870c-310d-4271-a8d7-2e0ba2b5a94f)  
故owner是0x5B38Da6a701c568545dCfcB03FcB875f56beddC4  
2. 當有觀眾捐錢給實況主時donationList會記住觀眾的地址與價錢並可以查詢紀錄來確認自己捐多少錢  
eg. 假設0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2(簡稱A)要捐給owner(實況主)5個以太幣              
![image](https://github.com/10360555iamnn/-/assets/95529963/9e52ba10-6cc3-4f49-b1c8-284541388fef)  
點選getHistory可以查詢自己捐多少錢  
4. 也能查詢自己的VIP等級  
因為設定沒捐過等級是none,捐贈0以上(不包含0)1以下以太幣為N,捐贈1以上(不包含1)5以下以太幣為R,捐贈5以上(不包含5)10以下以太幣為SR,捐贈10以上(不包含10)以太幣為UR  
又A捐贈5個以太幣  
![image](https://github.com/10360555iamnn/-/assets/95529963/da3b7825-9243-4239-9141-8e932a77957b)  
故VIP等級是R

5. 收款時有設定只有owner可以提領錢  
# Donation_pro專題解釋
1. Donation專題的功能都有  
2. 增加第三方收取一成的合約費用  
