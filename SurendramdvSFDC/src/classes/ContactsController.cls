public with sharing class ContactsController {

    public void save() {
       update contacts;
    }


  public List<Contact> contacts {get;set;}
  public ContactsController()
  {
     contacts = [select id, name, accountId, email, phone from contact limit 10];
  }

}