public class WrapperPositionController {

    @AuraEnabled
	public static List<Account> GetAccountNames()
	{
      return [select id, Name from Account order by Name limit 10 ];
	}
    
    @AuraEnabled
	public static List<Account> GetAccountDetails(String idListJSONStr)
	{
    	Type idArrType=Type.forName('List<Id>');
    	List<Id> ids=(List<Id>) JSON.deserialize(idListJSONStr, idArrType);
         
    	return [select id, Name, Industry, Website from Account where id in :ids];
	}
}