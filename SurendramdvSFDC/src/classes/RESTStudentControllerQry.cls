@RestResource(urlMapping='/GetCase/*')
global with sharing class RESTStudentControllerQry {

@HttpGet
  global static List<Case> getOpenCases() {
    String companyName = RestContext.request.params.get('companyName');
    Account company = [ Select ID, Name, Phone, BillingState from Account where Name = :companyName];
     
    List<Case> cases = [SELECT Id, Subject, Status, OwnerId, Owner.Name from Case WHERE AccountId =: company.Id];
    return cases;
   
  }

}