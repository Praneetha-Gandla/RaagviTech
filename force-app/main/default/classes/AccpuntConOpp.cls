public with sharing class AccpuntConOpp {    
    @InvocableMethod(label='Create Contact and Opportunity')
    public static void createRelatedRecords(List<Id> accountIds) {
        List<Contact> newContacts = new List<Contact>();
        System.debug('Account Ids: ' + accountIds);
        System.debug('Account Ids: ' + accountIds.size());
        List<Opportunity> newOpportunities = new List<Opportunity>();
        for (Id accountId : accountIds) {
            newContacts.add(new Contact(
                FirstName = 'Default',
                LastName = 'Contact',
                AccountId = accountId






                
            ));
            newOpportunities.add(new Opportunity(
                Name = 'New Opportunity for ' + accountId,
                CloseDate = Date.today().addDays(30),
                StageName = 'Prospecting',


                
                AccountId = accountId
            ));
        }
        if (!newContacts.isEmpty()) {
            insert newContacts;
        }
        if (!newOpportunities.isEmpty()) {
            insert newOpportunities;
        }
    }
}