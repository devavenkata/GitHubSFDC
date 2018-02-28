public with sharing class AngularJSExample3Cont {
// Global Variables
     Public String AccountsJSONString {get;set;}
      
    // Constructor 
     Public AngularJSExample3Cont (){
         
        // Query Accounts
        Account[] accs = [SELECT Name, Type, AccountNumber, NumberOfEmployees, BillingStreet, BillingState, BillingPostalcode, 
                                 BillingCountry, BillingCity, OwnerId,  Owner.Name,
                              (SELECT Name, Email, Title, Phone FROM Contacts) FROM Account] ;
          
        List<JSONStructure> queryresults = new List<JSONStructure> ();
         
        for ( account a:accs ){
            // Add it to the List of Wrapper/Inner Class
            queryresults.add( new JSONStructure (a));
        }
         
        // Serilaize to JSON String
        AccountsJSONString = JSON.serializepretty(queryresults);
         
        System.Debug(' *** AccountsJSONString ==> ' + AccountsJSONString);
     }
     
    // Wrapper Class for JSON Structure
    Public class JSONStructure {
         
        Public Account acc ;
          
        Public JSONStructure(Account a){
             acc =a ;
        }
         
    }
}