trigger MyFirstTr1 on Account (after update) {

    list<account> acc = trigger.new;
    for(account a: acc)
    {
        if(a.type == 'Prospect')
        {
            list<opportunity> op = [select id, name from opportunity where accountid =: a.id];
            for(Opportunity o : op)
            {
            o.LeadSource = 'Web';
            update o;                
            }
        }
    }    
}