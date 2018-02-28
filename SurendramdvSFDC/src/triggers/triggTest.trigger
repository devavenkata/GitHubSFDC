trigger triggTest on Students__c (before insert) {

    List<Students__c> stu = trigger.new;
    for(Students__c s:stu)
    {
       if(s.Country__c == 'INDIA')
       {
           s.Phone_Number__c = '+91'+s.Phone_Number__c;
       }
        
      list<Students__c> ss = [select id, name from Students__c where name = :s.name];
      if(ss.size() >0)
      {
          s.addError('You can not enter duplicate records');
      }
    }
    
    
}