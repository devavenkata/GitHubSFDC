public class OppsController {


 public ApexPages.StandardSetController setCon {
    get{
           if(setCon == null)
           {
              setCon = new ApexPages.StandardSetController(Database.getQueryLocator(
                [Select Name, Type, amount, closedate FROM Opportunity order by Name]
              ));
              setCon.setPageSize(5);
           }   
           return setCon; 
    }
    set;
 
 }
 Public List<Opportunity> getoppList()
 {
    return  (List<Opportunity>) setCon.getRecords();
 }


}