@RestResource(UrlMapping='/AllStudentsList/*')
global with sharing class RestAllStudentsController {

    @HttpGet
    global static List<Students__c> getAllStudents()
    {
        return [select Name, Id from Students__c];
    }
}