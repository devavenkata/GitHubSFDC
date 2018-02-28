public class flagFilterTestClass {

    public flagFilterTestClass() {
        getFlagCases();
    }

    public List<Flag__c> flgCases {get; set;}
    
    public void getFlagCases()
    {
        flgCases = new List<Flag__c>();
        flgCases = [SELECT Name,CaseNumber__c,Is_this_Flag_Raised__c FROM Flag__c  WHERE Name <> ''];        
        System.debug('Falg Details'+flgCases);
    }
}