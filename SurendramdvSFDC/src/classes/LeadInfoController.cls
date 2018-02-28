public with sharing class LeadInfoController {

    @AuraEnabled
    public static List<Lead> getLeadInfo()
    {
        return [select name, email, status, company from Lead];
    }
    
    @AuraEnabled
    public static List<Lead> getLeadItemSearch(String searchStr)
    {
        String name = '%'+searchStr+'%';
        return [select name, email, status, company from Lead where Name like :name];
    }
    
}