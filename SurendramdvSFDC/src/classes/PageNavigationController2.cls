public class PageNavigationController2 {

 public Account account{get;set;}

   public PageNavigationController2()
   {
      Id idVal = Apexpages.CurrentPage().getParameters().get('Id');
      account = [select Id, name, phone from Account where id=:idVal];
      
   }
    
    public PageReference save() {
        Update account;
        PageReference pr = new PageReference('/apex/pageNavigation3?id='+account.id);
        return pr;        
    }
}