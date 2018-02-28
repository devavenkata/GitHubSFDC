public with sharing class WrapperTestClass
{
    @AuraEnabled
    public Account acc {get; set;}
     
    @AuraEnabled
    public Boolean selected {get; set;}
}