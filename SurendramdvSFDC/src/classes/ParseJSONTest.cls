public class ParseJSONTest {

    public List<UserDevices> userDevices{get;set;}

        public class Battery {
                public Integer percentage{get;set;}
                public Integer voltage{get;set;}
        }

        public class UserDevices {
                public List<String> asserts;
                public Battery battery{get;set;}
                public Integer deviceId{get;set;}
                public String deviceSerialNumber{get;set;}
                public String deviceType{get;set;}
                public String deviceWireId{get;set;}
                public String fwVersionRaw{get;set;}
                public String hardwareVersion{get;set;}
                public String lastSyncClient{get;set;}
                public String lastSyncedAt{get;set;}
                public String pairedAt{get;set;}
                public String pairedToEmail{get;set;}
        }

        
        public static ParseJSONTest parseStr() {
        String reqJSON = '{"userDevices":[{"asserts":[" 2015-8-06 22:48:00"," 2015-8-06 22:48:00"],"battery":{"percentage":20,"voltage":3745},"deviceId":29308103,"deviceSerialNumber":"12EB5676534B","deviceType":"Charge HR","deviceWireId":"eb5672212b12","fwVersionRaw":"APP18.84 BSL18.84","hardwareVersion":"9","lastSyncClient":"api/sync-CLIENT-VISIBLE/mobile-ios/401","lastSyncedAt":"2015-08-10T13:27:56.000Z","pairedAt":"2015-04-10T19:51:15.000Z","pairedToEmail":"afitbitter@somewhere.com"}]}'; 
                return (ParseJSONTest) System.JSON.deserialize(reqJSON, ParseJSONTest.class);
        }
        
}