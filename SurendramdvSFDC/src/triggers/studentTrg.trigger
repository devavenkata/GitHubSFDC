trigger studentTrg on Students__c (before insert) {

    list<Students__c> stu = trigger.new;
    
    for(Students__c st: stu)
    {
        if(st.City__c == 'Nellore')
        {
            st.Email__c = 'abcd@abc.com';
        }
    }
}