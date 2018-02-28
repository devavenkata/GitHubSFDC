public class DisplayPositionController {
    
     @AuraEnabled
    public static List<CommonWrapperClass.DisplayPositionRecords> getPositionRecords() {
        
        List<CommonWrapperClass.DisplayPositionRecords> lstPositionRecords = 
		new List<CommonWrapperClass.DisplayPositionRecords>();
        
        List<suren__PositionBig__c> lstPositions =  [SELECT Id, Name, suren__Status__c FROM suren__PositionBig__c];
        
        if(lstPositions != null && lstPositions.size() > 0){
            
            for(suren__PositionBig__c position : lstPositions){
                
                CommonWrapperClass.DisplayPositionRecords positionRecord = new CommonWrapperClass.DisplayPositionRecords();
                positionRecord.positionId = position.Id;
                positionRecord.positionTitle = position.Name;
                positionRecord.status = position.suren__Status__c;                
                lstPositionRecords.add(positionRecord);
            }
            
        }
        return lstPositionRecords;
    }    
    @AuraEnabled
    public static void performAction(string positionRecords) {
        
        if(!string.isBlank(positionRecords)){
            
            List<CommonWrapperClass.DisplayPositionRecords> lstPositionRecords = (List<CommonWrapperClass.DisplayPositionRecords>)System.JSON.deserialize(positionRecords,List<CommonWrapperClass.DisplayPositionRecords>.class);
            system.debug('Debug for Dsiplaying all the records: lstPositionRecords'+lstPositionRecords);    
            //Perform Operation with records 
            for(CommonWrapperClass.DisplayPositionRecords objPositionRecords:lstPositionRecords)
            {
                if(objPositionRecords.isSelected)
                {
                    //Play with selected Records here                   
                    system.debug('Selected Record :'+objPositionRecords);
                }
            }
                
        }
        
    }
}