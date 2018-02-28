public class CustomChatterRestPage {
 public PageReference postIt()
 {
 
     HttpRequest req = new HttpRequest();
     req.setEndpoint('https://na17.salesforce.com/services/data/v29.0/chatter/feeds/user-profile/005o0000000XLs3AAG/feed-items');
     req.setMethod('POST');
 
     req.setHeader('Authorization','OAuth '+UserInfo.getSessionId());
     req.setHeader('content-type','application/json');
     req.setBody('{ "body":{ "messageSegments":[{ "type" : "Mention", "id" : "005o0000000XLs3" }, { "type":"Text", "text":" Comment from REST API" } ] } }');
     
     Http http = new Http();
     HttpResponse res = http.send(req);
        
     System.debug(res);
 
    return null;
 }

}