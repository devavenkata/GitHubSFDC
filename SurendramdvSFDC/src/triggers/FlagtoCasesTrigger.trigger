trigger FlagtoCasesTrigger on Flag__c (after insert) {

 list<flag__c> flc = trigger.new;

 if(trigger.isInsert)
 {
   for(flag__c c :flc)
   {
     if(c.CaseNumber__c !=null)
     {

       list<Case> cas = [select CaseNumber,Owner_of_Last_Flag__c, Name_of_Owner_of_Last_Flag_Added__c,SFDC_ID_of_Last_Flag_Owner_Added__c from Case where id =: c.caseNumber__c];
     System.debug('inside case number logic'+cas.size());
       for(Case cc: cas)
       {
       System.debug('inside case number logic for loop');
          cc.Owner_of_Last_Flag__c = UserInfo.getUserName();
          cc.Name_of_Owner_of_Last_Flag_Added__c = UserInfo.getName();
          cc.SFDC_ID_of_Last_Flag_Owner_Added__c = UserInfo.getUserId();
          System.debug('trigger Falg User Name'+UserInfo.getUserName());
          update cc;
       }
     }
   } 
 }
}