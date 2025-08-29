public with sharing class lead {
    public static void lead Source(){
        List<Account> accList = [Select Id,Name,Industry FROM Account];
        for(Account acc: accList){
        System.debug(acc.Id);
    }
}
