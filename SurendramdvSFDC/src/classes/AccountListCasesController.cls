public with sharing class AccountListCasesController {
    @AuraEnabled
    public static List<Account> getAllAccounts()
    {
        return [select id, name, description,Website from Account order by Name];
    }    
}