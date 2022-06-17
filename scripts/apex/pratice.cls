public with sharing class AccountController {

    @AuraEnabled(cacheable=true)
       public static List<Account> getAccountList()
       {
          List<Account> acclist=new List<Account>([SELECT Id, Name, AnnualRevenue FROM Account WHERE AnnualRevenue!=null Limit 5]);
           
          return acclist;
           
            
       }

}