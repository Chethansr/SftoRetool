trigger NarvarProjectTrigger on Project__c (after insert, after update, after delete) {
    List<Project__c> projects = Trigger.new;
    for (Project__c pro : projects) {
        String projectString = Json.serialize(pro, false);
        ProjectTriggerHandler.handle(projectString);
    }
}