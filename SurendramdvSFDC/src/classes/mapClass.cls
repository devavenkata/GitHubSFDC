public class mapClass {

    public void mapMethod()
    {
        map<string,integer> mapVal = new map<string,integer>();
        mapVal.put('Nilesh', 100);
        mapVal.put('Somesh',101);
        mapVal.put('Venkat',102);
        mapVal.put('Jayesh',103);
        system.debug(' map all values :' +mapVal);
        system.debug(' map Key values :' +mapVal.keySet());
        system.debug(' map values :' +mapVal.values());
    }     
    
    
}