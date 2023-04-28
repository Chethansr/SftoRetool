trigger WhatsAppRateTrigger on WhatsApp_Rate__c (before insert, before update) {
    for(WhatsApp_Rate__c rec : Trigger.new){
        rec.Lookup_Key__c = rec.Lookup_Key_Formula__c;
    }
}