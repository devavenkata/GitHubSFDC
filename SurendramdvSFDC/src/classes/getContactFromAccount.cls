public class getContactFromAccount {
    public Account acc;
    public List <Contact> Contacts {get; set;}
    public getContactFromAccount(ApexPages.StandardController controller) {
        this.acc = (Account)controller.getRecord();
    }

    public List <Contact> getContacts() {
        Contacts = new List <Contact> ();
        Contacts = [SELECT ID,
                             AccountId,
                             FirstName,
                             LastName,
                             Title,
                             Email,
                             Phone,
                             Birthdate
                             FROM Contact
                             WHERE AccountId = :acc.ID  AND Title!=' '
                             
                             ];
            System.debug('Contactlist' + Contacts);
            return Contacts;
            

    }
}