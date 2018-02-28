@isTest
public class TestingClass {

    public @isTest static void main()
    {
        user u = [select id,name from user where lastname= 'Mahesh'];
        system.runAs(u)
        {
            batch__c b = new Batch__c();
            b.name = 'batch99';
            insert b;
            list<batch__c> b1 = [select id,name from batch__c];
            
        }
    }
}