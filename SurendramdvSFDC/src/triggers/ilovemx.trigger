trigger ilovemx on User (after insert) {
    List<GroupMember> GMlist = new List<GroupMember>();
    List<User> usrObj = trigger.new;
    System.debug('in insert');
    for(User U : usrObj) {
         System.debug('in is active'+U.Country);
        if(U.Country == 'Guatemala') {
            System.debug('in cuetamala');
            GroupMember GM = new GroupMember();
            GM.GroupId = '00Go0000000jinrEAA';
            GM.UserOrGroupId = U.id;
            System.debug('User id value'+u.Id);
            GMList.add(GM);         
        }
       } 
     
    if(!GMList.isEmpty()) {
        System.debug('Group Member List is ' + GMList.size());
        insert GMList;
    }
    
}