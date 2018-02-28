trigger RejectDoubleBooking on Session_Speaker__c (before insert, before update) {

    for(Session_Speaker__c sessSpeaker : trigger.new)
    {
        Session__c sess = [Select Id, Session_date__c FROM Session__c WHERE Id=:sessSpeaker.Session__c];
         
        List<Session_Speaker__c> conflicts = [SELECT Id FROM Session_Speaker__c WHERE Speaker__c = :sessSpeaker.Speaker__c
                                              AND session__r.session_date__c = :sess.session_date__c];
        if(!conflicts.isEmpty())
        {
            sessSpeaker.addError('The Speaker is already booked at this time');
        }
    }
    
}