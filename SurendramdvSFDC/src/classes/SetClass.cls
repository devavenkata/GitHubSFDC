public class SetClass {

    public void setMethod()
    {
        Set<string> setVal = new Set<string>();
        setVal.add('Nilesh');
        setVal.add('Somesh');
        setVal.add('Venkat');
        setVal.add('Jayesh');
        system.debug(' list values :' +setVal);
        setVal.add('Abhirup');
        system.debug(' list values after addition :' +setVal);
         for(String x:setVal)
        {
            system.debug(' list values for-each loop :' +x);
        }
    }     
    
    
}