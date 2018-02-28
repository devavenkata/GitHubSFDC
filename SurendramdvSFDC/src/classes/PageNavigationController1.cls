public class PageNavigationController1 {

 
   public Account account{get;set;}

   public PageNavigationController1()
   {
      account = new Account();
   }
    
    public PageReference save() {
        insert account;
        PageReference pr = new PageReference('/apex/pageNavigation2?id='+account.id);
        return pr;        
    }

}