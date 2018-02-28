public class ReportViewAuraController {

    @AuraEnabled
    public static String getRunReport()
    {
        Report rep = [SELECT Id,DeveloperName From Report where DeveloperName = 'Merchandise_with_Price_and_Inventory' LIMIT 1];
        Reports.ReportResults results = Reports.ReportManager.runReport(rep.Id,true);
        return JSON.serialize(results);
    }
    
}