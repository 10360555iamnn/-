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
e.g假設A要領取實況主的錢會抱錯  
![image](https://github.com/10360555iamnn/-/assets/95529963/a882f8d4-4b30-4aaa-9991-34622bac42c9)  
因為這是實況主的合約並非是A的合約  
當實況主提領時，合約成立  
![image](https://github.com/10360555iamnn/-/assets/95529963/738149d9-45e4-40de-a500-b7310e45a9da)
即實況主可以領到錢  
![image](https://github.com/10360555iamnn/-/assets/95529963/7dcd0a5e-b379-4e84-9899-a046ac9042e6)


# Donation_pro專題解釋
1. Donation專題的功能都有先略過  
設定0x5B38Da6a701c568545dCfcB03FcB875f56beddC4為建立合約者  
故me設定為0x5B38Da6a701c568545dCfcB03FcB875f56beddC4  
因為owner還沒設定所以是空地址  
![image](https://github.com/10360555iamnn/-/assets/95529963/10c2e4f1-4009-4fcc-9f25-a0bb567b6a3f)  
設定0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2為owner  
![image](https://github.com/10360555iamnn/-/assets/95529963/b4982e19-9768-4185-b46c-193960d5aae0)  

2. 增加第三方收取一成的合約費用  
![image](https://github.com/10360555iamnn/-/assets/95529963/539d09fa-d0ba-40a9-a4f0-f607490b9464)  
假設owner要提領，owner可以領9成，me可以領1成(一樣只有owner可以領)  
![image](https://github.com/10360555iamnn/-/assets/95529963/c6d1b1f7-3274-4e92-a504-5db304c98567)  


