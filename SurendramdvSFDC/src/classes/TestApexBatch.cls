public class TestApexBatch implements schedulable
{
   public void execute(SchedulableContext sc)
   {
     system.debug('Schedulable code');
   }
}