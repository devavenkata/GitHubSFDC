public class SearchString {

    public String keyword1 { get; set; }

    public String keyword{set;get;}
    
    public List<Account> results;
    
    public List<Account> getResults()
    {
      return results;
    }
    
    
    public PageReference search_now()
    {
       results = (List<Account>) [FIND: keyword IN NAME FIELDS RETURNING ACCOUNT(Name, Type, Industry, Phone, Fax)][0];
       return null;
    }
    
    
    
}