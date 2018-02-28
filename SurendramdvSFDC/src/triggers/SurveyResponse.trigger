trigger SurveyResponse on Survey_Response__c (after insert,after update) {

 list<Survey_Response__c> srv = trigger.new;

   for(Survey_Response__c c :srv)
   {
     if(c.Agent_Rating__c !=null)
     {

       list<Case> cas = [select CaseNumber,Subject from Case where id =: c.caseNumber__c];
     System.debug('inside case number logic'+cas.size());
       for(Case cc: cas)
       {
       System.debug('inside case number logic for loop');
          String s; 
          if(c.Agent_Rating__c > 4)
          {
              s = ' (AWESOME)';
          }   
           else
           {
               s = ' (NOT AWESOME)';
           }
          cc.Subject = cc.Subject + s;
          update cc;
       }
     }
   } 

}