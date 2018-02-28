public with sharing class AccountwithOppController {

    public List<Account> getAccountVal() {
    
        List<Account> accountData = [select Id, Name, Phone,Owner.name from Account where Id IN(select accountid from opportunity where StageName='Closed Won')];    
        return accountData;
    }

}