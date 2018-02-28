public class FirstClass {

    public void listMethod()
    {
        list<string> li = new list<string>();
        li.add('Suren');
        li.add('Momidi');
        li.add('Deva');
        system.debug('List Items'+li);
        for(integer i=0;i<li.size();i++)
        {
            system.debug('For loop list items' + li[i]);
        }
        for(string x:li)
        {
            system.debug('For each loop' + x);
        }
        try{
        system.debug('Index for list' +li.get(6));
        }
        catch(Exception e)
        {
            system.debug(' Index exception');
        }
    }
    
    public void divisionbyZero(integer a , integer b)
    {
        try{
        	integer result = a/b;
        	system.debug('the result is '+result);            
        }
        catch(Exception e)
        {
            system.debug('Division zero exception '+e);            
        }    
        finally
        {
            system.debug(' In Finally');
        }
            
        
    }
    
    
}