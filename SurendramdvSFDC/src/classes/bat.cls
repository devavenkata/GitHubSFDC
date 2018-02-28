public class bat implements Database.batchable<Students__c>
{
   public Iterable<students__c> start(Database.batchableContext bc)
   {
     list<students__c> stu = [select id,name,country__c from students__c];
     return stu; 
   }
   public void execute(Database.batchableContext bc, list<students__c> stu)
   {
        for(students__c s:stu)
        {
          s.country__c = 'USA';
          update s;
        } 
     
   }
   public void finish(Database.batchableContext bc)
   {
     system.debug('processing finished');
   }

}