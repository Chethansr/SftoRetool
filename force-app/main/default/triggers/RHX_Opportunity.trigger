trigger RHX_Opportunity on Opportunity (before insert, before update, after delete, after insert, after undelete, after update, before delete) 
{
    /*if(TriggerFramework.isRhxTriggerDisabled){
        return;
    }
    Type rollClass = System.Type.forName('rh2', 'ParentUtil');
    if(rollClass != null) {
        rh2.ParentUtil pu = (rh2.ParentUtil) rollClass.newInstance();
        if (trigger.isAfter) {
            pu.performTriggerRollups(trigger.oldMap, trigger.newMap, new String[]{'Opportunity'}, null);
        }
    }*/
   /* 
    //System.debug('=================>');
    if(OpportunityTriggerHandler.executedOnce == false) {
        OpportunityTriggerHandler.executedOnce = true;
        new RHX_OpportunityTriggerHandler().run();
        new OpportunityTriggerHandler().run(); 
    }
    */
    new OpportunityTriggerHandler().run(); 
}