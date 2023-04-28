trigger NarvarAccountTrigger on Account (after insert, after update, after delete) {
	List<Account> accounts = Trigger.new;
    for (Account acc : accounts) {
        String acString = Json.serialize(acc, false);
        ProjectTriggerHandler.handle(acString);
    }
}