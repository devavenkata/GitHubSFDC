public class wrapperController {

    public List<selecaccount> getSelectedAccounts() {
        return selectedAccounts;
    }


 List<PositionNew__C> Plist = new List<PositionNew__C>();
 List<Candidate__C> Clist = new List<Candidate__C>();
 List<wrapper> wrap = new List<wrapper>();
 List<selecaccount> selectedAccounts;
 
 public List<wrapper> getlstWrapperString()
 {
    Plist = [select name, Location__C, Max_Pay__C from PositionNew__C];
    Clist = [select First_Name__C, Last_Name__C from Candidate__C];
    for(integer i=0;i<Plist.size();i++)
    {
      wrap.add(new wrapper(Plist[i].name,Plist[i].Location__C,Plist[i].Max_Pay__C,Clist[i].First_name__C,Clist[i].last_name__C));
    }    
    return wrap;   
 }  
 public class wrapper
 {
   public String PName{get;set;}
   public String PLocation{get;set;}
   public Decimal PMaxpay{get;set;}
   public String CFname{get;set;}      
   public String CLname{get;set;}  
   public Boolean isSelected{get;set;}  

   public wrapper(String PName, String PLocation, Decimal PMaxpay, String CFname, String CLname)
   {
      this.PName = PName;
      this.Plocation = PLocation;
      this.PMaxpay = PMaxpay;
      this.CFname = CFname;
      this.CLname = CLname;
      this.isSelected = false;
   }
   
 }

 public void ProcessSelected()
 {
   selectedAccounts= new  List<selecaccount>();
   for(wrapper sel: wrap)
   {
     if(sel.isSelected == true)
     {
       selectedAccounts.add(new selecaccount(sel.PName,sel.Plocation,sel.PMaxpay,sel.CFname,sel.CLname));
     }
   }
 }


 public class selecaccount
 {
   public String Name{get;set;}
   public String Location{get;set;}
   public Decimal Maxpay{get;set;}
   public String Fname{get;set;}      
   public String Lname{get;set;}      
   public Boolean isSelected{get;set;}
   public selecaccount(String Name, String Location, Decimal Maxpay, String Fname, String Lname)
   {
      this.Name = Name;
      this.location = Location;
      this.Maxpay = Maxpay;
      this.Fname = Fname;
      this.Lname = Lname;
      isSelected = false;
   }

    
 }



}