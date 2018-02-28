@isTest
public class assertionsTest1 {
    public @isTest static void main()
    {
        integer a = 50;
	integer b = 10;
	integer c = a + b;
        system.assertEquals(c=60,c,'assertion is failed'); 
	system.debug('After assertion'); 
    }
}