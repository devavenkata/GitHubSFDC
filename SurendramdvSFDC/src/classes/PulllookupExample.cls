public class PulllookupExample {

   Private ApexPages.StandardController stdCtrl;

    public PulllookupExample(ApexPages.StandardController controller) {
      stdCtrl = controller;
    }
    public void AccountSelected()
    {
       Case cs = (Case)stdCtrl.getRecord();
       
       if(!String.isBlank(cs.AccountId))
       {
         cs.account = [select Website, Phone from Account where id=:cs.AccountId];
       }
       else
       {
         cs.account = null;
       }
    }

}