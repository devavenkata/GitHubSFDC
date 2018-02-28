public class getaccountDetails {

   public Account account {get; set;}
   public getaccountDetails()
   {
      Id id = apexpages.currentpage().getParameters().get('Id');
      account = [select id, name, phone from Account where Id=:id];
   }


}