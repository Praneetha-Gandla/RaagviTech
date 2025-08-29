public with sharing class AccountHandler {
    public AccountHandler() {
    List<Account> accList = [Select Id,Name FROM Account];
    for(Account acc: accList){
    }
}
}