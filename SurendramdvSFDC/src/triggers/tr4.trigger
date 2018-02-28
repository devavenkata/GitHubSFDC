trigger tr4 on students__c (before delete)
{
  list<students__c> stu = trigger.old;

  for(students__c s: stu)
  {
    s.adderror('you cant delete any student record');
  }  

}