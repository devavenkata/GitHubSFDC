public with sharing class OpportunitySortController {

    public String soqlSort {get;set;}
    public String sortDir {get{ if(sortDir==null){sortDir='asc';} return sortDir;} set;}
    public String sortField {get{ if(sortField==null){sortField='Name';} return sortField;} set;}
    public List<Opportunity> opp1 = new List<Opportunity>();
    public List<Opportunity> opp2 = new List<Opportunity>(); 
    
    public void toggleSort() {
        sortDir = sortDir.equals('asc')?'desc': 'asc';
        soqlSort = 'select id,Name,AccountId,Account.name,Amount,StageName,CloseDate,LastModifiedDate from Opportunity';
        opp1 = Database.query(soqlSort + ' order by ' + sortField + ' ' + sortDir);
        setCon = new ApexPages.StandardSetController(opp1);
                setCon.setPageSize(size);  

    }


    Public Integer size{get;set;} 
         
    public OpportunitySortController (){
        size=10;
    }

    public ApexPages.standardSetController setcon {
    get{
                 if(setCon == null) {        

                soqlSort = 'select id,Name,AccountId,Account.name,Amount,StageName,CloseDate,LastModifiedDate from Opportunity';
                opp2 = Database.query(soqlSort + ' order by ' + sortField + ' ' + sortDir);
                setCon = new ApexPages.StandardSetController(opp2);
                setCon.setPageSize(size);  
            }            
            return setCon;
    }
    set;
    
    }

    // Initialize setCon and return a list of record    
     
    public List<Opportunity> getOpportunities() {
         return (List<Opportunity>) setCon.getRecords();
    }


}