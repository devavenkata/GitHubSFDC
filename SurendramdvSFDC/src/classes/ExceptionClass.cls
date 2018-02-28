public class ExceptionClass {

    public void exceptionTest(integer a, integer b)
    {
        try
        {
        integer c = a/b;
        system.debug('division by value '+c);
        }
        catch(Exception  e)
        {
            system.debug('Exception raised in division'+e);
        }
        
        finally
        {
            system.debug('Finally executed');
        }
    }
    
}