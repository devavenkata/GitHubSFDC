public with sharing class AccountsOppController {
   
   public List<Account> getResultsOpp()
   {
    List<Account> accData = [select name, phone,owner.name from Account where Id in (select accountId from Opportunity where stagename='Closed Won')];
    return accData;
   }
   
    public List<Opportunity> getOpplogin() {
       List<Opportunity> opplo = [Select Id, name, owner.name from Opportunity where Owner.name = :UserInfo.getName()];
       return opplo;
      }
}