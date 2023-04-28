trigger NarvarOpportunityProductTrigger on OpportunityLineItem (after insert, after update, after delete) {
    List<OpportunityLineItem> opLineItems = Trigger.new;
    If(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate)){
        for (OpportunityLineItem opLineItem : opLineItems) {
            String opLineItemString = Json.serialize(opLineItem);
            ProjectTriggerHandler.handle(opLineItemString);
        }
    }
    If(Trigger.isAfter && Trigger.isDelete){
        if(!trigger.old.isEmpty()){
            for (OpportunityLineItem opLineItem : trigger.old) {
                if(opLineItem != null && trigger.oldMap.get(opLineItem.Id) != null){
                String opLineItemString = Json.serialize(opLineItem);
                    ProjectTriggerHandler.handle(opLineItemString);
                }
            }
        }
        
    }
    
}