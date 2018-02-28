public class positionsQuery {

    public List<PositionNew__c> poq { get; set; }
    public positionsQuery()
    {
       poq = new List<PositionNew__c>();
       List<PositionNew__c> pos = [select name,Max_Pay__c, Min_Pay__c,Location__c from PositionNew__c];
       for(PositionNew__c po : pos)
       {
         poq.add(po);
       }
    }

     List<PositionNew__c> posa = [select name,Max_Pay__c, Min_Pay__c,Location__c from PositionNew__c];
     public List<PositionNew__c> getPoqa()
     {
        return posa;
     }

}