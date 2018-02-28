public class PageNavigationController3 {

 public Account account{get;set;}

   public PageNavigationController3()
   {
      Id idVal = Apexpages.CurrentPage().getParameters().get('Id');
      account = [select Id, name, phone from Account where id=:idVal];
      
   }
}