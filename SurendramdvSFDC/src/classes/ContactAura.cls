public class ContactAura {
    @AuraEnabled
    public static List<Contact> get10COntacts()
    {
        return [SELECT Id, NAME, Department, Email FROM Contact Limit 50] ;
    }
}