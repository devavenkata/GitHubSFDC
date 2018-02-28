public class wizard {
  Account a = new Account();
  Contact c = new Contact();
  Opportunity o = new Opportunity();
  
  public Account geta() {
    return a;
  }

  public Contact getc() {
    return c;
  }

  public Opportunity geto() {
    return o;
  }
  
  public PageReference Wiz_account_page()
  {
    return Page.Wiz_account_page;
  }

  public PageReference Wiz_contact_page()
  {
    return Page.Wiz_contact_page;
  }

  public PageReference Wiz_opportunity_page()
  {
    return Page.Wiz_opportunity_page;
  }

  public PageReference Wiz_review_page()
  {
    return Page.Wiz_review_page;
  }

  public PageReference save_all()
  {
    insert a;
    c.accountid = a.id;
    insert c;
    o.accountid = a.id;
    insert o;
    return Page.Wiz_thankyou_page;
  }

}