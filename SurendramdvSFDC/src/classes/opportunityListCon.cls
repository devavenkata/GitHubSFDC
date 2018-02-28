public class opportunityListCon {

    public ApexPages.StandardSetController setCon {
        get {
            if(setCon == null) {
                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(
                      [select name,closedate from Opportunity]));
            }
            return setCon;
        }
        set;
    }
   
    public List<Opportunity> getOpportunities() {
         setCon.setpagesize(5);
         return (List<Opportunity>) setCon.getRecords();
    }
   
}