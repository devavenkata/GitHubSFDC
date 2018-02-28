public class ContactsContrPagination {
  
  public Integer size {get;set;}
  
  public ContactsContrPagination()
  {
    size = 10;
  }
  
  public ApexPages.StandardSetController setCon
  {
     get{
           if(setCon == null)
           {   
           setCon = new ApexPages.StandardSetController(Database.getQueryLocator([select id, name,Email from Contact]));
           setCon.setPageSize(size);
           }
           return setCon;
        }
     set;     
  }

  public List<Contact> getConts()
  {
     return (List<Contact>) setCon.getRecords();
  }
}