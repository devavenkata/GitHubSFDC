public class PositionQuery {

 public List<PositionNew__c> cs{get;set;}
 public PositionQuery()
 {
    cs = new List<PositionNew__c>();
    for(PositionNew__c c:[select name,Max_Pay__c, Min_Pay__c,Location__c from PositionNew__c])
    {
       cs.add(c);
    }
 }

}