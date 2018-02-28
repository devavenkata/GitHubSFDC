public class HTTPController {
	
    public HTTPController()
    {
        // HttpRequest Class
        HttpRequest requestParam = new HttpRequest();
        requestParam.setEndpoint(Label.ContactsEndPointURL);
        requestParam.setMethod('GET');
        
        //HttpResponse Class
        Http httpParam = new Http();
        HttpResponse response = httpParam.send(requestParam);
        String strResponse = response.getBody();
        System.debug('Service Response is '+strResponse);
        
        //JSON Parsing for Id         
        JSONParser parser1 = JSON.createParser(strResponse);        
        List<String> ContactIds = new List<String>();
        while (parser1.nextToken() != null) {
            if ((parser1.getCurrentToken() == JSONToken.FIELD_NAME) &&
                (parser1.getText() == 'id')) {
                parser1.nextToken();
                ContactIds.add(parser1.getText());
            }
        }
        // Remove already added records
        set<String> setContIds = new set<String>();
        for(Contact lstC : [select id,lastname,C_id__c from contact where c_id__c in :ContactIds])
        {
            setContIds.add(lstC.C_id__c);
        }


        //JSON Parsing for Names         
        JSONParser parser2 = JSON.createParser(strResponse);        
        List<String> ContactNames = new List<String>();
        while (parser2.nextToken() != null) {
            if ((parser2.getCurrentToken() == JSONToken.FIELD_NAME) &&
                (parser2.getText() == 'name')) {
                parser2.nextToken();
                ContactNames.add(parser2.getText());
            }
        }
        //JSON Parsing for Address         
        JSONParser parser3 = JSON.createParser(strResponse);        
        List<String> Addresses = new List<String>();
        while (parser3.nextToken() != null) {
            if ((parser3.getCurrentToken() == JSONToken.FIELD_NAME) &&
                (parser3.getText() == 'address')) {
                parser3.nextToken();
                Addresses.add(parser3.getText());
            }
        }

        //JSON Parsing for email         
        JSONParser parser4 = JSON.createParser(strResponse);        
        List<String> Emails = new List<String>();
        while (parser4.nextToken() != null) {
            if ((parser4.getCurrentToken() == JSONToken.FIELD_NAME) &&
                (parser4.getText() == 'email')) {
                parser4.nextToken();
                Emails.add(parser4.getText());
            }
        }


        //JSON Parsing for gender         
        JSONParser parser5 = JSON.createParser(strResponse);        
        List<String> Genders = new List<String>();
        while (parser5.nextToken() != null) {
            if ((parser5.getCurrentToken() == JSONToken.FIELD_NAME) &&
                (parser5.getText() == 'gender')) {
                parser5.nextToken();
                Genders.add(parser5.getText());
            }
        }
        
        //JSON Parsing for mobile         
        JSONParser parser6 = JSON.createParser(strResponse);        
        List<String> Mobiles = new List<String>();
        while (parser6.nextToken() != null) {
            if ((parser6.getCurrentToken() == JSONToken.FIELD_NAME) &&
                (parser6.getText() == 'mobile')) {
                parser6.nextToken();
                Mobiles.add(parser6.getText());
            }
        }

		// Populating inside List 
        	lstwrpCon = new List<wrapContacts>();    
            for(integer i =0 ; i<ContactIds.size();i++)
            {
                wrpCon = new wrapContacts();
                wrpCon.id = ContactIds[i];
                wrpCon.name = ContactNames[i];
                wrpCon.address = Addresses[i];
                wrpCon.gender = Genders[i];
                wrpCon.email = Emails[i];
                wrpCon.mobile = Mobiles[i];
                wrpCon.ischecked = false;
                if(!setContIds.contains(wrpCon.id))
                {
                lstwrpCon.add(wrpCon);
                }    
            }
        
    }
	
    public wrapContacts wrpCon{get;set;}
    public List<wrapContacts> lstwrpCon {get;set;}
    
    
    // Building a block
	// Id, name, email,address,gender, phone mapping 
    public class wrapContacts {
        public boolean ischecked{get;set;}
        public String id{get;set;}
        public String name {get;set;}
        public String address {get;set;}
        public String gender {get;set;}
        public String email {get;set;}
        public String mobile {get;set;}
        
    }
    
    public PageReference doSave()
    {
        List<Contact> li = new List<Contact>();
        for(wrapContacts wrc : lstwrpCon)
        {
            if(wrc.ischecked == true)
            {
                Contact con = new Contact();
                con.LastName = wrc.name;
                con.C_id__c = wrc.id;
                con.Email = wrc.email;
                con.MailingStreet = wrc.address;
                con.MobilePhone = wrc.mobile;
                con.Gender__c = wrc.gender;
                li.add(con);
            }
        }
        
        if(li.size() >0)
        {
            try
            {
            Insert li;
            }
            catch(exception e)
            {
                System.debug('Exception occured:'+e.getMessage());
            }
        }        
        return (new pageReference('/apex/HTTPVF').setRedirect(true));
    }    
}