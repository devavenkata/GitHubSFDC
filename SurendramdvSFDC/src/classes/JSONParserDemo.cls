public class JSONParserDemo {
    
    //Considering the same JSON from previous post but only with two questions 
    String jsonstring ='{"Questions": {"Question": [{"Q": "Which of the following is a responsibility of Supplier Management?","o1": "Development, negotiation and agreement of Operational Level Agreements (OLAs)","o2": "Development, negotiation and agreement of the Service Portfolio", "o3": "","a": "Development, negotiation and agreement of contracts","ua": "NA"},{ "Q": "Which of the following does the Availability Management process include? 1. Ensuring services are able to meet availability targets 2. Monitoring and reporting actual availability 3. Improvement activities, to ensure that services continue to meet or exceed their availability goals", "o1": "1 and 2 only","o2": "1 and 3 only","o3": "","a": "All the Above","ua": "NA"}]}}';
    List<QuestionsWrapper> parsedquestions = new List<QuestionsWrapper>();
        
    public List<QuestionsWrapper> getParsedquestions(){
           // Create a JSON Parser from String.
        JSONParser parser = JSON.createParser(jsonstring);
        while (parser.nextToken() != null) {
            // Check for JSON array starting.
            // START_ARRAY This token is returned when '[' is encountered.
            if (parser.getCurrentToken() == JSONToken.START_ARRAY) {
                while (parser.nextToken() != null) {
                    // Check for JSON object starting
                    //  START_OBJECT This token is returned when '{' is encountered.
                    if (parser.getCurrentToken() == JSONToken.START_OBJECT) {
                        // Read entire invoice object, including its array of line items.
                        QuestionsWrapper qw = ( QuestionsWrapper)parser.readValueAs(QuestionsWrapper.class);
                        system.debug('Question' + qw.q);             
    
                        parsedquestions.add(qw);               }
                }
            }
        }
         return parsedquestions;  
    }
    
    //Inner class of required JSON object type
    public class QuestionsWrapper
  {
      public String Q{get;set;}
     public String o1{get;set;}
     public String o2{get;set;}
     public String o3{get;set;}
     public String a{get;set;}
     public String ua{get;set;}
  }
    
}