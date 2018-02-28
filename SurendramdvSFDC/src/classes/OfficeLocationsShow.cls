global with sharing class OfficeLocationsShow {

  @RemoteAction
  global static List<Office__c> findAll()
  {
    return [select Id, Name, Location__Latitude__s, Location__Longitude__s from Office__c ];
  }


}