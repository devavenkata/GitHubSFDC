public with sharing class Sample 
{    
    private integer totalRecs = 0;     
    private integer index = 0;
    private integer blockSize = 5;         
    
    public sample()
    {
        totalRecs = [select count() from Students__c];        
    }    
    
    public List<Students__c> getMemb() 
    {
        List<Students__c> membs = Database.Query('SELECT Name, Email__c FROM Students__c LIMIT :blockSize OFFSET :index');
        System.debug('Values are ' + membs);
        return membs;
    }    
    
    public void beginning()
    {
        index = 0;
    }
    
    public void previous()
    {
        index = index - blockSize;
    }
    
    public void next()
    {
        index = index + blockSize;
    }

    public void end() 
    { //user clicked end
        if(math.mod(totalRecs,blockSize)==0)
        index= totalrecs -blockSize; 
        else
        index = totalrecs - math.mod(totalRecs,blockSize);
    }     
    
    public boolean getprev()
    {
        if(index == 0)
        return true;
        else
        return false;
    }  
    
    public boolean getnxt()
    {
        if((index + blockSize) >= totalRecs)
        return true;
        else
        return false;
    }         
}