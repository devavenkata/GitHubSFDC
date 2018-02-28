trigger trg10 on students__c(after insert, after delete)
{
   
     list<students__c> stu = trigger.new;
	 if(trigger.isinsert)
     {    
     for(students__c s: stu)
     {
	 list<course__c> cou = [select id,name from course__c where id =: s.course__c];	
	 for(course__c c:cou)
         {
           c.Auto_Generate_Student__c = true;
           update c;
         }        
     }
     }
     if(trigger.isdelete)
     { 
        for(students__c s: trigger.old)
     	{
	 	list<course__c> cou = [select id,name from course__c where id =: s.course__c];	
	 	for(course__c c:cou)
         {
           c.Auto_Generate_Student__c = false;
           update c;
         }        
     	}
     }    
    
}