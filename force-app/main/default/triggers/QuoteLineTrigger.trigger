trigger QuoteLineTrigger on SBQQ__QuoteLine__c (before update) {
    new QuoteLineTriggerHandler().run();
}