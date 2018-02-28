public class ListClass {

    public void listMethod()
    {
        list<string> listVal = new list<string>();
        listVal.add('Nilesh');
        listVal.add('Somesh');
        listVal.add('Venkat');
        listVal.add('Jayesh');
        system.debug(' list values :' +listVal);
        listVal.add(3,'Abhirup');
        system.debug(' list values after addition :' +listVal);
        
        for(integer i =0;i<listVal.size();i++)
        {
            system.debug(' list values :' +listVal[i]);
        }
        
        for(String x:listVal)
        {
            system.debug(' list values for-each loop :' +x);
        }
    }     
    
    
    
}