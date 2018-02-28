public class OpportunityCLS {
public List<opportunity> oppList = new List<opportunity>();

public List<opportunity> getRecords(){
 oppList = [Select Name,CloseDate,Amount,StageName from Opportunity];
 return oppList;

}


}