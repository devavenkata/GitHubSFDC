public with sharing class OpptnController {
	
    @AuraEnabled
    public static List<Opportunity> getOpps()
    {
        return [select Account.Name, Name, Amount, CloseDate from Opportunity];
    }
    
}