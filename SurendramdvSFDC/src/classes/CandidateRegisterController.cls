public class CandidateRegisterController {

    public Candidate__c candidate{set;get;}

    public CandidateRegisterController ()
    {
        candidate= new Candidate__c();
    }

   public pageReference saveRecords()
   {
      insert candidate;
      PageReference ref = new PageReference('/apex/thankyoupage');
      return ref;
   }

}