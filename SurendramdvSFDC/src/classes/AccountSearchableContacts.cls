public with sharing class AccountSearchableContacts {

  public List<Contact> contacts {get;set;}
  public String searchString{get;set;}
  public String accountId;
  
  public AccountSearchableContacts(ApexPages.StandardController controller)
  {  
     searchString='';
     accountId = controller.getId();
     doQuery();
  }
  public void doQuery()
  {
    String queryString='';
    if(searchString != null)
    {
       queryString = '%' +searchString+ '%';
    }   
    contacts = [select id, name, accountId, email, phone from contact where lastname like :queryString 
                and accountId= :accountId
                 order by lastname asc LIMIT 10];    
  }
  public void save()
  {
    update contacts;
  }

}