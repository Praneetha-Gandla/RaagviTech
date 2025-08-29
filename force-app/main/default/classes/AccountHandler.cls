public with sharing class AccountHandler {
    public AccountHandler() {
    List<Account> accList = [Select Id,Name,Industry FROM Account];
    for(Account acc: accList){
       System.debug('List of Account --->',acc.Name);
       System.debug('List of Account --->,acc.Industry);
    }
 }
}