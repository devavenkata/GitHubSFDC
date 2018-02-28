public with sharing class OpportunityController {

    @AuraEnabled
    public static List<Opportunity> getOpps()
    {
        return [select id, Name,Description, Account.Name from Opportunity];
    }
}