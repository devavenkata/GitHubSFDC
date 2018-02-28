public class LeadInformationController {

    @AuraEnabled
    public static List<Lead> getInfo()
    {
        return [select name,email,status,company from Lead];
    }
    
    @AuraEnabled
    public static List<Lead> getLeadItemSearch(String searchStr)
    {
        String name= '%'+searchStr+'%';
        return [select name,email,status,company from Lead where Name like :name];
        
    }
}