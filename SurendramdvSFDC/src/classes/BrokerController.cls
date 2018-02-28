public with sharing class BrokerController {
    
    @AuraEnabled
    public static BrokerResults getBrokers() {
        BrokerResults brokerResults = new BrokerResults();
        brokerResults.brokers = [SELECT Id, Name, suren__Email__c, suren__phone_number__c FROM suren__Broker__c];
        brokerResults.total = brokerResults.brokers.size();
        return brokerResults;
    }
    
    @AuraEnabled
    public static suren__Broker__c saveBroker(suren__Broker__c broker)
    {
        upsert broker;
        return broker;    
    }
    
    @AuraEnabled
    public static void deleteBroker(List<suren__Broker__c> brokers)
    {
        //delete brokers;
    }    
    
    public with sharing class BrokerResults {
        @AuraEnabled
        public List<suren__Broker__c> brokers { get;set; }
        
        @AuraEnabled
        public Integer total { get;set; }
    }
    
}