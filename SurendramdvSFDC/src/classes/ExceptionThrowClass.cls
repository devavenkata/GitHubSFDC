public class ExceptionThrowClass {
	public integer balance = 10000;
    public void exceptionThrow(integer withdraw)
    {
        try
        {
        	if(balance < withdraw)
            {
                throw new myThrowClassException();
            }
            balance = balance - withdraw;
            system.debug('Balance value '+balance);
        }
        catch(Exception  e)
        {
            system.debug('Exception raised in balance calc '+e);
        }
        
        finally
        {
            system.debug('Finally executed');
        }
    }

}