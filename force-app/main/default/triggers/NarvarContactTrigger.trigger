trigger NarvarContactTrigger on Contact (after insert, after update, after delete) {
    List<Contact> contacts = Trigger.isDelete ? Trigger.old : Trigger.new;
    for (Contact c : contacts) {
        if(c != null )
        {
            String cString = Json.serialize(c, false);
        	ProjectTriggerHandler.handle(cString);
        }
    }
}