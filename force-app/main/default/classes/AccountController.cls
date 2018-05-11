public with sharing class AccountController {
 
    @AuraEnabled public static List<Account> findAll() {
        return [
            SELECT Id, Name, Location__Latitude__s, Location__Longitude__s
                FROM Account
                WHERE Location__Latitude__s != null AND Location__Longitude__s != null
            LIMIT 50
        ];
    }
    
}