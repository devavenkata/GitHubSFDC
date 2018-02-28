public with sharing class SearchableContactsController {

    public void save() {
       update contacts;
    }

  public List<Contact> contacts {get;set;}
  public String searchString{get;set;}
  
  public SearchableContactsController()
  {  
     searchString='';
     doQuery();
  }
  public void doQuery()
  {
    String queryString='';
    if(searchString != null)
    {
       queryString = '%' +searchString+ '%';
    }   
    contacts = [select id, name, accountId, email, phone from contact where lastname like :queryString order by lastname asc LIMIT 10];
    
    
    
  }

}