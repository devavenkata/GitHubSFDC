trigger CourseTrigger on Course__c (before insert) {

    list<course__c> li = trigger.new;
    for(course__c co : li)
    {
     if(co.name != null)
     {
        	co.Auto_Generate_Student__c = true;
     }
    }
}