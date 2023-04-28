trigger CreateBillingContactTrigger on SBQQ__QuoteDocument__c (after insert, after update) {
    if(trigger.isAfter) {
        if(trigger.isInsert || trigger.isUpdate){
           CreateBillingContactTriggerHandler.createContacts(trigger.new);
        }
    }    
}