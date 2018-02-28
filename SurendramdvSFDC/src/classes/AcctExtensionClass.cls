public class AcctExtensionClass {

    public AcctExtensionClass(ApexPages.StandardController controller) {

    }
  private String st = 'Hello from Extension class, this will execute first';
  public String getHello()
  {
     return st;
  }

  public List<Campaign> campsList = [Select Name,StartDate, EndDate,BudgetedCost from Campaign];

  public List<Campaign> getCamps()
  {
    return campsList;
  }

}