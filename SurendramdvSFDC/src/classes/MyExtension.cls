public class MyExtension {

    private final Account acct;
    
    public MyExtension(ApexPages.StandardController con)
    {
        this.acct = (Account)con.getRecord();
    }
    public String getTitle()
    {
        return 'Account: '+ acct.name +'('+acct.Id +')';
    }
}