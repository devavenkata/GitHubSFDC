public class AccountNumberRequired {
    
    // the standard controller that is being extended
        private ApexPages.StandardController stdCtrl;
        
        // constructor
        public AccountNumberRequired(ApexPages.StandardController std)
        {
                stdCtrl=std;
        }
        
        // Validates that the contact name and one of email/phone is provided before 
        // delegating to the standard controller save method
        public PageReference save()
        {
                Account acc=(Account) stdCtrl.getRecord();
                Boolean error=false;
                
                if (String.IsBlank(acc.AccountNumber))
                {
                        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Please enter the Account Number.'));
                        error=true;
                }
                
                
                PageReference result=null;
                if (!error)
                {
                        result=stdCtrl.save();
                }
                
                return result;
        }
}