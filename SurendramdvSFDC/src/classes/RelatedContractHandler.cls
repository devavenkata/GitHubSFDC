public class RelatedContractHandler {

    @InvocableMethod
    public static void closeContractForAccounts(List<Id> accList)
    {
        List<Contract> li = [select Id, Name from Contract where status!='Closed' and Account.suren__Status__c = 'Closed'
                           AND AccountId in :accList];
        for(Contract c: li)
        {
            c.Status = 'Closed';
        }
        
        Update li;
    }
    
}