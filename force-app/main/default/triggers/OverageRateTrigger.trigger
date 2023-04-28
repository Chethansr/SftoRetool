trigger OverageRateTrigger on Overage_Rate__c (before insert, before update) {
    for(Overage_Rate__c rec : Trigger.new){
        rec.Lookup_Key__c = rec.Lookup_Key_Formula__c;
    }
}