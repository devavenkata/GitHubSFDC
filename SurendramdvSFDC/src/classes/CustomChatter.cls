public class CustomChatter {

    public String feedComment { get; set; }

    public PageReference postIt() {
        
        FeedItem fi = new FeedItem();
        fi.body = feedItem;
        fi.parentId = UserInfo.getUserId();
        insert fi;
        
        FeedComment fc = new FeedComment();
        fc.CommentBody = feedComment;
        fc.FeedItemId = fi.id;
        insert fc;
        
        return new PageReference('/_ui/core/userprofile/UserProfilePage?u='+UserInfo.getUserId()+'&fid='+fi.id);

    }




    public String feedItem { get; set; }
}