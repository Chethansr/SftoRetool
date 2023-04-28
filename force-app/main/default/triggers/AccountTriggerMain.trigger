trigger AccountTriggerMain on Account (before insert, before update, after update, before delete) {
    if(Trigger.isInsert && Trigger.isBefore){
        AccountTriggerHandler.beforeInsertHandler(Trigger.new);
    }
    if(Trigger.isUpdate && Trigger.isBefore){
        AccountTriggerHandler.beforeUpdateHandler(Trigger.new);
    }
    UltimateParentAccountTriggerHandler.assignUltimateParent(Trigger.new, Trigger.oldMap);
}