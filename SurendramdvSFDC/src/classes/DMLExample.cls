public class DMLExample {

    public void insertFaculty()
    {
        Faculties__c ff = new Faculties__c();
        ff.name = 'AbhirupTest';
        ff.Experience__c = '5';
        ff.Email_Id__c = 'suren@gmail.com';
        ff.Phone_Number__c = '9052627282';
        system.debug(' Faculties record'+ff);
        insert ff;
    }
}