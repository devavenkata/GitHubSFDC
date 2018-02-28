abstract public class SurenClass {

   integer i;
   string s;
   public void add(integer a, integer b)
   {
       integer c = a + b;
       system.debug(c);
   }
    
    public void listMethod()
    {
        list<string> li = new list<string>();
        li.add('Surendra');
        li.add('Momidi');
        li.add('Babu');
        system.debug('list of items' + li);
        
        set<string> ss = new set<string>();
        ss.add('Nilesh');
        ss.add('Ameyush');
        ss.add('Boomesh');
        system.debug('list of items from set '+ss);
        
        map<string,integer> mp = new map<string,integer>();
        mp.put('India',1000);
        mp.put('USA',2000);
        mp.put('UK',3000);
        system.debug('list of Keys from map '+mp.keySet());
        system.debug('list of values from map '+mp.values());
        system.debug('USA value get '+mp.get('USA'));
        
    }
   

}