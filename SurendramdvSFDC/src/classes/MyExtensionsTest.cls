public class MyExtensionsTest {

    public MyExtensionsTest(ApexPages.StandardController controller) {

    }

    public List<Campaign> campsList = [Select Name,StartDate, EndDate,BudgetedCost from Campaign];
    public List<Campaign> getCamps()
    {
      return campsList;
    }

}