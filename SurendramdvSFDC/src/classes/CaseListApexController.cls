public with sharing class CaseListApexController {

    @AuraEnabled
    public static List<Case> getCaseInfo(String accountId){
        List<Case> caseList = new List<Case>();
        for(Account acc: [select id, Name, (select CaseNumber,Contact.Name, Subject, Priority, CreatedDate, Status, Owner.Name from Cases) from account where id=:accountId])
        {
            for(case c: acc.cases)
            {
                caseList.add(c);
                System.debug('All case List'+c);
            }
        }
        return caseList;
    }
    
}