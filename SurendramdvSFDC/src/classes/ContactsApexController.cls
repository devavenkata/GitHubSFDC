public with sharing class ContactsApexController {

    @AuraEnabled
    public static List<Contact> getAllContacts()
    {
        return [select id, name, phone from Contact limit 50];
    }
    
    @AuraEnabled
    public static List<Contact> findByName(String searchKeyName)
    {
        String name = '%'+searchKeyName+'%';
        return [select id, name, phone from Contact where name like :name LIMIT 50];
    }

    @AuraEnabled
    public static Contact findById(String contactId)
    {
        return [select id, name, title, phone, mobilephone,Account.Name from Contact where id = :contactId];
    }
    
}