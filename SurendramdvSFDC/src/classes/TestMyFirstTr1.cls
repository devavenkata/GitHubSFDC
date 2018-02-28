@isTest
public class TestMyFirstTr1 {

     public static testmethod void TestMyFirstTr1_Test()
     {
         Test.startTest();
         
         Account ac = new Account(Name='Surendra123');
         insert ac;
         ac.type = 'Prospect';
         update ac;
         
         Opportunity opp = new Opportunity(Name=ac.Name + ' Opportunity',                                                                            
                                       AccountId=ac.Id);
         insert opp;
         
         // Test that the trigger correctly updated the industry
       System.assertEquals('Web', opp.LeadSource);
 
       update opp;
       // Test that the trigger correctly updated the industry
       System.assertEquals('Web', opp.LeadSource);
         
         Test.stopTest();
     }
}