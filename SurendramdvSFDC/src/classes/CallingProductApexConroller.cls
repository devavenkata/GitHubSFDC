public class CallingProductApexConroller {

    @AuraEnabled
    public static List<Product2> findByName(String searchKey)
    {
        String name = '%'+searchKey+'%';
        return [select name, productCode from Product2 where name like :name LIMIT 50];
    }

}