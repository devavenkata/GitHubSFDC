@RestResource(urlMapping='/AllStudentsTest/*')
global with sharing class RESTStudentTestController {

@HttpGet
  global static List<Students__c> getAllStudentsTest() {
         
    List<Students__c> stu = [SELECT Name, Identification_No__c, Email__c,City__c from Students__c];
    return stu;
    
  }
}