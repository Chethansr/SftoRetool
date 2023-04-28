trigger NarvarQuoteLineTrigger on SBQQ__QuoteLine__c (after insert, after update, after delete) {
    List<SBQQ__QuoteLine__c> quotelines = Trigger.new;
    for (SBQQ__QuoteLine__c q : quotelines) {
        String qString = Json.serialize(q, false);
        ProjectTriggerHandler.handle(qString);
    }
}