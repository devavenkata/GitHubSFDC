trigger trg1 on Students__c (before insert, before update) {

    list<students__c> stu = trigger.new;
    if(trigger.isinsert)
    {
     for(students__c s: stu)
     {
        if(s.Identification_No__c == null)
        {
            s.Identification_No__c = 9999;
        }
     }
    }
    if(trigger.isupdate)
    {
     for(students__c s: stu)
     {
        if(s.Identification_No__c == null)
        {
            s.Identification_No__c = 8888;
        }
     }
    }
    
    
}