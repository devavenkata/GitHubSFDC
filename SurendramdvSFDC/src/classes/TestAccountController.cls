@isTest
private class TestAccountController {

  static testMethod void testSave() {
    Account a = new Account();
    a.Name = 'Account Name';
    insert a;

    PageReference ref = new PageReference('/apex/Day2CallingVFPagefromaButton?aId=' + a.Id);
    Test.setCurrentPage(ref);

    Test.startTest();
    //This will run the constructor of the controller
    AccountController myController = new AccountController();
    //Now we can test our action function on the controller
    PageReference ref2 = myController.saveItem();
    Test.stopTest();

    system.assertNotEquals(ref2, null);
  }

}