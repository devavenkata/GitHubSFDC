@RestResource(urlMapping='/AllStudentsTestJSON/*')
global with sharing class RESTStudentJSONTestController {

@HttpGet
  global static String getAllStudents() {
    
    String jsonResponse = '';
    RestRequest req = RestContext.request;
    RestResponse res = RestContext.response;
    List<Students__c> stu = null; 
    stu = [SELECT Name, Identification_No__c, Email__c,City__c from Students__c];
    res.statusCode = 200;
    jsonResponse = Json.serialize(stu);
    return jsonResponse;
    
  }
}