public with sharing class OpportunityListController {

    @AuraEnabled
    public static List<Opportunity> getOppsList()
    {
        return [select id, Name from Opportunity limit 100];
    }
    
}