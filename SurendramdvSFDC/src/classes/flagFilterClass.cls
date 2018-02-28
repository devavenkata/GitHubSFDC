public class flagFilterClass {

    public List<Flag__c> flagCases {get;set;}
    public flagFilterClass(ApexPages.StandardSetController controller) {
     getFlagCases();
    }
    
    public void getFlagCases() {
        flagCases= new List <Flag__c> ();
        flagCases= [SELECT Name,CaseNumber__c,Is_this_Flag_Raised__c
                             FROM Flag__c
                             WHERE Name = 'Red Flag'                             
                             ];
            System.debug('Flag Details' + flagCases);
    }
    

}