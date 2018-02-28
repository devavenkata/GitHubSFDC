public class MyAccExt {

    public final Account acct;
    public MyAccExt(ApexPages.StandardController controller) {
        this.acct = (Account)controller.getRecord();
    }
    public String getTitle()
    {
      return 'Account' +acct.name +'('+acct.id +')';
    }

}