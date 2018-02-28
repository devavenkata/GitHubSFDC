@RestResource(urlMapping='/AllStudents/*')
global with sharing class RESTStudentController {

@HttpGet
  global static List<Students__c> getAllStudents() {
         
    List<Students__c> stu = [SELECT Name, Identification_No__c, Email__c,City__c from Students__c];
    return stu;
    
  }
}