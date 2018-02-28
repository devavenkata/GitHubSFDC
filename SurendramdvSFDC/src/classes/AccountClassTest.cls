@isTest
public class AccountClassTest
{
   public static testmethod void addAccount()
   {
     Account a = new Account();
     a.name = 'Surendra Test Account';
     INSERT a;
   }
}