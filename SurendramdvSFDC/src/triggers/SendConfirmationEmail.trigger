trigger SendConfirmationEmail on Session_Speaker__c (after insert) {

    for(Session_Speaker__c newItem: trigger.new)
    {
        Session_Speaker__c sessionSpeaker = [select 
                                             session__r.Name, 
                                             session__r.session_date__c, 
                                             speaker__r.First_name__c,
                                             speaker__r.Last_name__c,
                                             speaker__r.Email__c
                                             from session_speaker__c where Id = :newItem.Id];
    
    
    if(sessionSpeaker.speaker__r.Email__c !=null)
    {
        String address = sessionSpeaker.speaker__r.Email__c;
        String subject = 'Speaker Confirmation';
        String message = 'Dear '+sessionSpeaker.speaker__r.First_Name__c +
            		     ',\nYour Session "'+sessionSpeaker.session__r.Name + '" on '+
            			sessionSpeaker.session__r.session_date__c +' is confirmed. \n\n' +
            		    'Thanks for Speaking at the Conference!';
        EmailManager.sendMail(address,subject,message);
    }
    }  
}