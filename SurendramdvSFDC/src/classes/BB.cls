public class BB extends BBB {

    public Integer i = 20;
    public Integer j = 15;
    
    public void addNumbers()
    {
        try
        {
            Integer sum = i + j + k;
            List<Integer> li = new List<Integer>();
            li.add(20);
            li.add(30);
    
            for(Integer i:li)
            {
                sum = sum+i;
                System.debug('List values'+i);
            }
            System.debug('Add Numbers'+sum);
        }
        catch(Exception e)
        {
            System.debug('New Exception'+e);
        }
        
    }
    
}