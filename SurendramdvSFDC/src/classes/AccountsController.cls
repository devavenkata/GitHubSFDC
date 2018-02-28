public class AccountsController {

	@AuraEnabled
    public static List<String> getAccountOptions(){
        List<Account> options = [Select name from Account Limit 100];
        List<String> li = new List<String>();
        
        for(Account a : options)
        {
            li.add(a.Name);
        }
        return li;
    }

}