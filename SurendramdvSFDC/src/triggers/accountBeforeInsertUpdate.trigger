trigger accountBeforeInsertUpdate on Account (before insert,before update) {

  List<Contact> conList = New List<Contact>();
  String testStringInTrigger;
  
  findContactsWithEmail fConEmail = New findContactsWithEmail();
  
  conList = fConEmail.returnContactsWithEmails(trigger.new[0]);
  
  System.debug('**these are all the contacts that have email adresses against them'+conList);
  
  testStringInTrigger = findContactsWithEmail.returnStringMethod();
  
  System.debug('Test string returned by static method is: '+ testStringInTrigger );
}