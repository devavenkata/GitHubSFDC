@isTest
public class assertionsTest {
    public @isTest static void main()
    {
        integer a = 50;
	integer b = 10;
	integer c = a + b;
    system.assert(c==60,'assertion is failed');
	system.debug('After assertion'); 
    }
}