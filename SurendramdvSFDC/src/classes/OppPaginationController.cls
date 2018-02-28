public class OppPaginationController {

    Public Integer size{get;set;} 
         
    public OppPaginationController(){
        size=10;
    }
     
    public ApexPages.StandardSetController setCon {
        get {
            if(setCon == null) {                
                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(
                      [select id,Name,AccountId,Account.name,Amount,StageName,CloseDate,LastModifiedDate from Opportunity]));
                setCon.setPageSize(size);  
            }            
            return setCon;
        }
        set;
    }
      
    // Initialize setCon and return a list of record    
     
    public List<Opportunity> getOpportunities() {
         return (List<Opportunity>) setCon.getRecords();
    }

}