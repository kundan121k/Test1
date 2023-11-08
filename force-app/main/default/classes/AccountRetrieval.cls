public class AccountRetrieval {
    
    
    public List<Account> getAccounts() { 
        List<Account> accountList = [SELECT Id, Name, Industry, Phone FROM Account];  
        return accountList;   
    }
    
    
}