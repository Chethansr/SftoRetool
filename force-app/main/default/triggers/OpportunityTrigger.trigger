/**
 * created: 1/Aug/2021 : Epitomecloud
 */ 
trigger OpportunityTrigger on Opportunity (before insert, before update, after update) {
    new OpportunityTriggerHandler().run();
}