public class WrapperClassonCandidate {

    public WrapperClassonCandidate(ApexPages.StandardController controller) {

    }
    
    public List<WrapperClassEx> WrapperList{set;get;}
    public List<WrapperClassEx> getWrapperObj()
    {
      List<Candidate__c> conList = [Select Id, first_name__c, email_id__c from Candidate__c limit 5];
      WrapperList = new List<WrapperClassEx>();
      for(Candidate__c con:conList)
      {
        WrapperList.add(new WrapperClassEx(con,false));
      }
      return WrapperList;
    }

    public class WrapperClassEx
    {
       public Candidate__c conObj{get;set;}
       public Boolean checkBox{get;set;}
       public WrapperClassEx(Candidate__c can, boolean selectBox)
       {
          conObj = can;
          checkbox = selectBox;
       }
    }

    public void SendEmail()
    {
       List<Messaging.SingleEmailMessage> lstEmailId = new List<Messaging.SingleEmailMessage>();
       for(WrapperClassEx w:WrapperList)
       {
         if(w.checkbox == true)
         { 
           Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
           mail.setToAddresses( new String[]{w.conObj.Email_Id__c});
           mail.setReplyTo('surendra.mdv@gmail.com');
           mail.setplainTextBody('Hello');
           mail.setSenderDisplayName('Perotech Systems');
           mail.setSubject('This is a Testing Email');
           lstEmailId.add(mail);
         }
       }
       if(lstEmailId.size()> 0)
       {
         try{
            Messaging.sendEmail(lstEmailId);
            ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.Confirm,'Sent !'));           
         }
         catch(Exception e){}
       }
       
    }

}