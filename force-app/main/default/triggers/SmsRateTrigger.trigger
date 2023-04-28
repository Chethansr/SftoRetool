trigger SmsRateTrigger on SMS_Rate__c (before insert, before update) {
    for(SMS_Rate__c rec : Trigger.new){
        rec.Lookup_Key__c = rec.Lookup_Key_Formula__c;
    }
}