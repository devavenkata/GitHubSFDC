public class SearchTextController {

    public SearchTextController()
    {
      searchresult = new List<Account>();
    }
        
    public PageReference Search_Now() {
        searchresult = (List<Account>) [FIND: keyword IN NAME FIELDS RETURNING ACCOUNT(Name, Type, Industry, Phone, Fax)][0];
        return null;
    }


    public String keyword { get; set; }
    public List<Account> searchresult;
    public List<Account> getResults()
    {
      return searchresult;
    }
}