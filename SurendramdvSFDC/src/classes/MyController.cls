public class MyController {

    public Id selectedAccount{set;get;}
    public List<Contact> contactsInformation{set;get;}
    
    public List<Account> getMyaccounts() {
        return [SELECT Id, name, AccountNumber from Account ORDER BY LastModifiedDate DESC LIMIT 10];
    }

    public void accountClicked()
    {
        contactsInformation = [SELECT FirstName, LastName from Contact WHERE AccountId =:selectedAccount];
    }

}