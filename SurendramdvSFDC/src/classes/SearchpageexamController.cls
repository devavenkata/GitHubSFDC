public with sharing class SearchpageexamController {

    public List<Account> results { get; set; }
    public String search_str { get; set; }
    
    public Boolean getResultsAvailable() {
        return (results.size()>0);
    }

    public SearchpageexamController()
    {
      results = new List<Account>();
    }

    public PageReference DoSearch()
    {
       String wcStr = '%'+search_str+'%';
       results = [select id, name, type, industry from Account where name like :wcStr];
       return null;
    }
    public PageReference clearForm()
    {
       results.clear();
       return null;
    }

}