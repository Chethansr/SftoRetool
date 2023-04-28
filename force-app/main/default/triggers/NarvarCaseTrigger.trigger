trigger NarvarCaseTrigger on Case (after insert, after update, after delete) {
	List<Case> cases = Trigger.new;
    for (Case c : cases) {
        String cString = Json.serialize(c, false);
        ProjectTriggerHandler.handle(cString);
    }
}