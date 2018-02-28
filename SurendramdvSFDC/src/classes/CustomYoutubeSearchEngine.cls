public class CustomYoutubeSearchEngine {

    public PageReference searchIt() {
    
    HttpRequest req = new HttpRequest();
    searchText  = searchText.replaceAll(' ','+');
    req.setEndPoint('https://www.googleapis.com/youtube/v3/search?part=snippet&q='+searchText+'&key=AIzaSyAR7c7iUmJMqT94a5NnGHrFWJAeWnyYnlQ');
    req.setMethod('GET');
    req.setHeader('content-type','application/json');
    Http http = new Http();
    HTTPResponse res = http.send(req);
    temp = res.getBody();
    

    dataSetOne = new superItemMapOne[]{};
    fromJSON dl = (fromJSON)JSON.deserialize(temp,fromJSON.class);
    
    for(integer i=0; i<dl.items.size();i++)
    {
      system.debug('title ----'+dl.items[i].snippet.title);
      system.debug('Description ----'+dl.items[i].snippet.description);     
      
      dataSetOne.add(new superItemMapOne(dl.items[i].snippet.title,dl.items[i].snippet.description,dl.items[i].snippet.thumbnails.medium.url,dl.items[i].id.videoId)); 
    }
    
    
    
        return null;
    }

 public String searchText{get; set;}
 public String temp{get;set;}
 public superItemMapOne[] dataSetOne {get;set;} 
 
 public class superItemMapOne
 {
   public String f1 {get;set;}
   public String f2 {get;set;}    
   public String f3 {get;set;}
   public String f4 {get;set;}
   
   public superItemMapOne(String fc1, String fc2, String fc3,String fc4)
   {
     f1 = fc1;
     f2 = fc2;
     f3 = fc3;
     f4 = fc4;
   }
 }

 // JSON to APEX
 
public class fromJSON{
    public String kind; //youtube#searchListResponse
    public String etag; //"YxyobdYztCvdjXOUqpUttvF39GM/h8HeOeqZBgpvuVIgVKhZFdJ-qgY"
    public String nextPageToken;    //CAUQAA
    public cls_pageInfo pageInfo;
    public cls_items[] items;

 }

    class cls_pageInfo {
        public Integer totalResults;    //1000000
        public Integer resultsPerPage;  //5
    }
    class cls_items {
        public String kind; //youtube#searchResult
        public String etag; //"YxyobdYztCvdjXOUqpUttvF39GM/RSebRz4s-lIbXjq9MOXyCA0a_XM"
        public cls_id id;
        public cls_snippet snippet;
    }
    class cls_id {
        public String kind; //youtube#video
        public String videoId;  //6WvHMNuhH3Y
    }
    class cls_snippet {
        public String publishedAt;  //2011-07-13T19:37:02.000Z
        public String channelId;    //UC8TyTcK5sjO1unJqngkL_VA
        public String title;    //Surah Rahman - Mishary Rashid Al Afasy سورة الرحمن - مشاري العفاسي
        public String description;  //Captivating recitation of Surah Ar-Rahman (55th Chapter of the Holy Quran) by Sheikh Mishary bin Rashid Alafasy. Captivating and technically accurate ...
        public cls_thumbnails thumbnails;
        public String channelTitle; //ranamuhammadatif
        public String liveBroadcastContent; //none
    }
    class cls_thumbnails {
        public cls_default defaultx;
        public cls_medium medium;
        public cls_high high;
    }
    class cls_default {
        public String url;  //https://i.ytimg.com/vi/6WvHMNuhH3Y/default.jpg
    }
    class cls_medium {
        public String url;  //https://i.ytimg.com/vi/6WvHMNuhH3Y/mqdefault.jpg
    }
    class cls_high {
        public String url;  //https://i.ytimg.com/vi/6WvHMNuhH3Y/hqdefault.jpg
    }




}