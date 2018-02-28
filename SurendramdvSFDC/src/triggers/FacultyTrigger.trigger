trigger FacultyTrigger on Faculties__c (before insert,before update) {

    if(trigger.isinsert)
    {
        for(Faculties__c f:trigger.new)
        {
            if(f.Experience__c == null)
            {
                f.Experience__c = '5';
            }
        }
    }
    if(trigger.isupdate)
    {
        for(Faculties__c f:trigger.new)
        {
            if(f.Experience__c == null)
            {
                f.Experience__c = '6';
            }
        }
    }
}