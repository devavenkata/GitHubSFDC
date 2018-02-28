public class ParseJSON{
    
    public string reqJSON = '{"userDevices":[{"asserts":[" 2015-8-06 22:48:00"," 2015-8-06 22:48:00"],"battery":{"percentage":20,"voltage":3745},"deviceId":29308103,"deviceSerialNumber":"12EB5676534B","deviceType":"Charge HR","deviceWireId":"eb5672212b12","fwVersionRaw":"APP18.84 BSL18.84","hardwareVersion":"9","lastSyncClient":"api/sync-CLIENT-VISIBLE/mobile-ios/401","lastSyncedAt":"2015-08-10T13:27:56.000Z","pairedAt":"2015-04-10T19:51:15.000Z","pairedToEmail":"afitbitter@somewhere.com"}]}'; 
    
    
    public ReqWrapper userDevices{get;set;}
    
    public pageReference parseStr()
    {
          JSONParser parser = JSON.createParser(reqJSON);
            while (parser.nextToken() != null) {
                   
                    if (parser.getCurrentToken() == JSONToken.START_ARRAY) {
                    
                      while (parser.nextToken() != null) {
                      if (parser.getCurrentToken() == JSONToken.START_OBJECT) {
                      userDevices= ( ReqWrapper)parser.readValueAs(ReqWrapper.class);                     
                      }
                     }
                 }
                }
         
               return null;
            }
        
     
    //This will be the main wrapper for JSON
      public class ReqWrapper
  {
      public String pairedAt{get;set;}
 
      public Battery battery{get;set;}
    
  }
    
   public class Battery
  {
     public Integer percentage{get;set;}
     public Integer voltage{get;set;}
  }   
}