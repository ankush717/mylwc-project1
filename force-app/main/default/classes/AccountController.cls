public with sharing class AccountController {

        @AuraEnabled(cacheable=true)
           public static List<Account> getAccountList()
           {

                 //QUERY 

            List<Account> lt=new List<Account>([SELECT Id, Name, AnnualRevenue FROM Account WHERE AnnualRevenue != null Limit 5]);

             return lt;

           }

    
}
