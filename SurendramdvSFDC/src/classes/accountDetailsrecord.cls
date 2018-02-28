public class accountDetailsrecord {

   public Account account {get; set;}
   public accountDetailsrecord()
   {
      Id id = apexpages.currentpage().getParameters().get('Id');
      account = [select id, name, phone from Account where Id=:id];
   }


}