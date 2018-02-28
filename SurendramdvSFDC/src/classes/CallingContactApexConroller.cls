public with Sharing class CallingContactApexConroller {
	@AuraEnabled
    public static List<Opportunity> getOpps()
    {
        return [select id, Name from Opportunity];
    }
}