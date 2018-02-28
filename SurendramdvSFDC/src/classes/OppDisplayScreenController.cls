Public class OppDisplayScreenController{
    //List of type of our wrapper class
    Public List<oppDisplayWrapper > oppWrapperList {get; set;}
    /*This is the constructor for class*/
    public OppDisplayScreenController(ApexPages.StandardController controller){
        if(oppWrapperList == null) {
            //Create new instance of the list that will store wrapper class instances
            oppWrapperList = new List<oppDisplayWrapper >();
            //Query some opportunity records randomly
            for(Opportunity op: [select Id, ExpectedRevenue, Probability, Description, Name, Type, StageName, LeadSource from Opportunity limit 4]) {
                // add the opportunity records and bollean flag to the wrapper class instances one by one
                oppWrapperList.add(new oppDisplayWrapper(op,true));
            }
        }
    }      
    /*This is the wrapper class*/
    public class oppDisplayWrapper {
        public Opportunity OppRec{get; set;}
        public Boolean Oppflag{get; set;}
        /*This is the constructor for wrapper class*/ 
        public oppDisplayWrapper (Opportunity opp,Boolean Oppflagvalue) {
            OppRec = opp;
            Oppflag= Oppflagvalue;
        }
    }
}