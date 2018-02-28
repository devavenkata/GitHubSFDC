trigger trg9 on course__c(after insert, after update, after delete)
{
  
   list<course__c> co = trigger.new;
   batch__c b = [select id, name from batch__c where name='Salesforce Batch'];	
   
   if(trigger.isinsert)
   {	
    for(course__c c: co)
    {
      if(c.Auto_Generate_Student__c == true)
      {
       students__c s = new students__c();
	   s.name = c.name + ' Student';
	   s.course__c = c.id;
	   s.batch__c = b.id;
	   insert s;		
      }	
    }
   } 

  if(trigger.isupdate)
   {	
    for(course__c c: co)
    {
      if(c.Auto_Generate_Student__c == true)
      {
        list<students__c> stu = [select id, name from students__c where course__c =: c.id];
        if(stu.size() == 0)
        {
           students__c s = new students__c();   
		   s.name = c.name + ' Student';
	   	   s.course__c = c.id;
	   	   s.batch__c = b.id;
	       insert s;		
        }
      }	
     if(c.Auto_Generate_Student__c == false)
      {
	list<students__c> st = [select id,name from students__c where course__c = : c.id ];
        delete st;
      }      
    }
   } 
   if(trigger.isdelete)
   {
     
      for(course__c c: trigger.old)
      {
	list<students__c> st = [select id,name from students__c where course__c = : c.id ];
        delete st;
      }
   } 
}