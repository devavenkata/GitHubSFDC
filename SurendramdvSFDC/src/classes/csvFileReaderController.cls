Public with sharing class csvFileReaderController {
public Blob csvFileBody{get;set;}
Public string csvAsString{get;set;}
Public String[] csvfilelines{get;set;}
Public String[] inputvalues{get;set;}
Public List<string> fieldList{get;set;}
Public List<account> sObjectList{get;set;}
  public csvFileReaderController(){
    csvfilelines = new String[]{};
    fieldList = New List<string>();
    sObjectList = New List<sObject>();
  }

  Public void readcsvFile(){
       csvAsString = csvFileBody.toString();
       csvfilelines = csvAsString.split('\n');
       inputvalues = new String[]{};
       for(string st:csvfilelines[0].split(','))
           fieldList.add(st);  
       
       for(Integer i=1;i<csvfilelines.size();i++){
           Account accRec = new Account() ;
           string[] csvRecordData = csvfilelines[i].split(',');
           accRec.name = csvRecordData[0] ;            
           accRec.accountnumber = csvRecordData[1];
           accRec.Type = csvRecordData[2];
           accRec.website = csvRecordData[3];
           accRec.AccountSource = csvRecordData[4];                                                                              
           sObjectList.add(accRec);  
       }
  }
}