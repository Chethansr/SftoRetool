trigger NarvarOpportunityTrigger on Opportunity (after insert, after update, after delete) {
    List<Opportunity> opps = Trigger.new;
    for (Opportunity opp : opps) {
    	String opString = Json.serialize(opp, false);
        System.debug('opp ' + opp);
        ProjectTriggerHandler.handle(opString);
    }
}