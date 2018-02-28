public class OpportunitySearchController {

    public OpportunitySearchController() {
      String str = ApexPages.currentPage().getParameters().get('fromURLName');
      if(str !=null) {
        searchText = str;
        search();
      }
    }

    Public List<Opportunity> searchResults{get;set;}
    public String searchText{get;set;}
    
    public PageReference Search()
    {
      if(searchResults == null)
      {
        searchResults = new List<Opportunity>();
      }
      else
      {
        searchResults.clear();
      }
      String searchText1 = '%'+searchText+'%';
      searchResults = [select name, stageName, amount,closeDate from Opportunity where name LIKE :searchText1 order by name];
//      String qry ='select name, stageName, amount,closeDate from Opportunity where name LIKE \'%'+searchText+'%\' order by name';
//      searchResults = Database.Query(qry);
      return null;
    }

}