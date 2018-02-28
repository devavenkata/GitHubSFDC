public with sharing class AccountListAuraController {

    @AuraEnabled
    public static List<Account> getAccounts()
    {
        return [select Id, Name, Description from Account Order by Name];
    }
    
}