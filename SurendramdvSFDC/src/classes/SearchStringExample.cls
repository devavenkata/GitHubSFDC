public with sharing class SearchStringExample {

    public List<Account> getResults() {
        return results;
    }


    public PageReference search_now() {
       results = (List<Account>) [FIND: keyword IN NAME FIELDS RETURNING ACCOUNT(Name, Type, Industry, Phone, Fax)][0];
       return null;
    }


    public String keyword { get; set; }
    public List<Account> results;
}