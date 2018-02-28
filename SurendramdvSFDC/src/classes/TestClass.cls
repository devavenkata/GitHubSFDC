public class TestClass {

    public void add(integer a, integer b)
    {
        system.debug('Sum is : ' + (a + b));
    }
    
    public void faculties()
    {
        list<Faculties__c> fac = [select name,email_id__c,experience__c,phone_number__c  from Faculties__c];
        //system.debug('All facultie' +fac);
    
        for( Faculties__c a : fac)
        {
            system.debug('one by one'+a);
        }
    }
    
    public void addNewRecord()
    {
    account a = new account();
	a.name = 'Surendra Account';
	a.AccountNumber = '123409876';
	a.Site = 'Hyderabad';
	INSERT a;
        System.debug('record inserted');
    }
}