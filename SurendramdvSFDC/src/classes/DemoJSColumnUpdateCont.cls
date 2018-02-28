Public Class DemoJSColumnUpdateCont {

Public List<Opportunity> Opptys {get;set;}

Public String accType {get;set;}

Public DemoJSColumnUpdateCont ()
{

Opptys = new List<Opportunity> () ;

Opptys = [SELECT id, Name, AccountId FROM Opportunity LIMIT 5 ] ;

}

}