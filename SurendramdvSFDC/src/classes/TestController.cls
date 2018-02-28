public class TestController {

  public Id selectAccount {get;set;}
  public List<Contact> contactInfo{get;set;}
  
  public List<Account> getMyaccounts() {
       return [SELECT Id, name, AccountNumber from Account ORDER BY LastModifiedDate DESC LIMIT 10];
   }
   public void accountClicked()
   {
       contactInfo = [SELECT FirstName, LastName from Contact WHERE AccountId =:selectAccount];
   }

}