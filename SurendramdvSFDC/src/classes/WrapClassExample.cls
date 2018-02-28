public class WrapClassExample {

    List<Account> a = new List<Account>();
    List<Contact> c = new List<Contact>();
    public List<Wrapper> wr = new List<Wrapper>();
    
    public List<Wrapper> getConts()
    {
        a = [select Id, name from Account];
        c = [select email from contact];
        for(integer i =0; i<a.size();i++)
        {    
                wr.add(new Wrapper(a[i].id,a[i].name,c[i].email));
        }    
        return wr;
    }
    
    public class Wrapper
    {
        public String Tid {get;set;}
        public String Tname {get;set;}
        public String Temail {get;set;}
        public Wrapper(String Tid, String Tname, String Temail)
        {
            this.Tid = Tid;
            this.Tname = Tname;
            this.Temail = Temail;
        }
    }
    
}