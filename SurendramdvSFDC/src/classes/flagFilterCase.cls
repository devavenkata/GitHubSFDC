public with sharing class flagFilterCase {

    public List<Flag__c> flagSt {get;set;}
    public flagFilterCase(ApexPages.StandardSetController controller) {
       getFlagCases();
    }

    public void getFlagCases()
    {
      flagSt = new List<Flag__c>();
      flagSt = [SELECT Name,CaseNumber__c, Is_This_Flag_Raised__c FROM Flag__c];
      System.debug('Flag Status Details'+flagSt);
    }
}