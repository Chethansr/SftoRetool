trigger NarvarUserTrigger on User (after insert, after update, after delete) {
	List<User> users = Trigger.new;
    for (User u : users) {
        String uString = Json.serialize(u, false);
        ProjectTriggerHandler.handle(uString);
    }
}