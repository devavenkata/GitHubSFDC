public with sharing class OppsControllerSearch {
    
    public OppsControllerSearch()
    {
    }
    
    public String searchStrVal{get;set;}
    Public List<Opportunity> searchResults{get;set;}

    String searchText1 = '%'+searchStrVal+'%';
    
    public PageReference searchFor()
    {
         String qry ='select name,id from Opportunity where name LIKE \'%'+searchStrVal+'%\' order by name';
         searchResults = Database.Query(qry);
    
        //searchResults = [select name from opportunity where name like :searchText1  order by name];
        return null;
    }   
    
}