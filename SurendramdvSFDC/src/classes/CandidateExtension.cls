public class CandidateExtension {

    public String name{set;get;}
    public String phone{set;get;}
    public String email{set;get;}
    public String city{set;get;}
    public String country{set;get;}     
    
    public Candidate__c candidate{get;set;}           

    public CandidateExtension(ApexPages.StandardController controller) {

    }
    
    public list<selectoption> getcountryobj()
    {
      list<selectoption> options = new list<selectoption>();
      Schema.DescribeFieldResult statusField = country__c.country__c.getDescribe();
      options.add(new SelectOption('--Select Any one--','--Select Any one--'));
      for(Schema.PickListEntry ple:statusField.getPicklistValues())
      {
         options.add(new SelectOption(ple.getValue(),ple.getLabel()));
      }
      return options;
    }
    public list<selectoption> getcityobj()
    {
      list<selectoption> options = new list<selectoption>();
      List<Country__c> citiVal = [select name from country__c where country__c=:country];
      options.add(new SelectOption('--Select City--','--Select City--'));
      for(country__c c:citiVal)
      {
       options.add(new SelectOption(c.name,c.name));
      }
      return options;
    } 
    
    public PageReference recordinsert()
    {
      Candidate__c can = new Candidate__c(First_Name__c=name,Mobile_Number__c=phone,Email_id__c=email,Country__c=country,City__c=city);
      insert can;
      can.clear();
      PageReference ref= new PageReference('https://na17.salesforce.com/a0K/o');
      ref.setRedirect(false);
      return ref;
    }

}