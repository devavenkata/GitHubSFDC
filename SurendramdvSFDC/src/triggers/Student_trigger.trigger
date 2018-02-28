trigger Student_trigger on Students__c (before insert) {

    list<students__c> stu = trigger.new;
    for(students__c s: stu)
    {
        if(s.Identification_No__c == null)
        {
            s.Identification_No__c = 8888;
        }
    }
}