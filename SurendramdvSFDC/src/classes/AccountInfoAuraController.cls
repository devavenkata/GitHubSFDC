public class AccountInfoAuraController {

    @AuraEnabled
    public static Account getAccountInfo(String acctId)
    {
        return [Select Id, Name, NumberOfEmployees, AnnualRevenue FROM Account WHERE Id= :acctId];
    }
    
}