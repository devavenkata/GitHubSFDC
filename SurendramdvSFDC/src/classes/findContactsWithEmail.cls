public class findContactsWithEmail {
Public List<Contact> conList = New List<Contact>();
 /*This method returns list of all the contacts associated with account that do not have email address in them*/
 Public List<contact> returnContactsWithEmails(Account accRec){
   // Query all the contacts associated with account that do have email addresses
   conList = [Select id,name,email from contact where accountid =: accRec.id and email != null];
   return conList;
 }
 /*This is a static method that return a test string to trigger*/
 Public static string returnStringMethod(){
   string testString;
   testString = 'i phone'; // set a testing string in the test variable
   return testString;
 }
}