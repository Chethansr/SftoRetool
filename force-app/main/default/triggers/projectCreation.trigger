trigger projectCreation on Opportunity (after insert, after update) 
{   /*
    List<Opportunity> oppsToBeProcessed = new List<Opportunity>();
    List<Project__c> projsToBeInserted = new List<Project__c>();
    Map<id,boolean> projsToExistance = new Map<id,boolean>();
    List<Project__c> existingPrjs = new List<Project__c>();
    
    //No use of it as sharing will be controlled by parent
    //List<project__Share> listPrjShr = new List<project__Share>();
    
    Map<id,id> mapOfOppIdOwnerId = new Map<id,id>();
    Map<id,String> mapOfOppIdOwnerProf = new Map<id,String>();
    for(Opportunity opp : Trigger.New)
    {
        if(opp.Probability == 100)
        {
            if(opp.type != 'Renewal')
            {
                oppsToBeProcessed.add(opp);
                mapOfOppIdOwnerId.put(opp.id,opp.ownerid);
                mapOfOppIdOwnerProf.put(opp.id,opp.OpptyOwnerProfile__c);
            }
        }
    }
    SysParameters__c SysParams = SysParameters__c.getValues('ProjectDefaultOwner');
    Id PrjOwner = Id.valueof(SysParams.Value__c);
    for (project__c prj : [select id,Opportunities__c from Project__c where Opportunities__c in :oppsToBeProcessed])
    {
      projsToExistance.put(prj.Opportunities__c,true);
      existingPrjs.add(prj);
    }
    for(Opportunity opp : oppsToBeProcessed )
    {
        if(projsToExistance.get(opp.id)== null )
        {
            Project__c prj = new Project__c();
            prj.Name = opp.Name + ' Project';
            prj.Account__c = opp.Accountid;
            prj.Opportunities__c = opp.id;
            prj.X0_Project__c = false;
            //No use of it as sharing will be controlled by parent
            //prj.ownerid = PrjOwner;
            
            projsToBeInserted.add(prj);
        }
    }
    if( projsToBeInserted!= null && projsToBeInserted.size() != 0)
    {
        insert projsToBeInserted;
    }
    if(existingPrjs != null && existingPrjs.size()!=0 )
    {
        projsToBeInserted.addAll(existingPrjs);
    }
    
    //No use of it as sharing will be controlled by parent
    /*
    for(Project__c prj : projsToBeInserted)
    {
         project__Share prShr= new project__Share();
         prShr.UserOrGroupId = mapOfOppIdOwnerId.get(prj.Opportunities__c);
         prShr.AccessLevel = 'Read';
         prShr.RowCause = Schema.project__Share.RowCause.Manual;
         prShr.ParentId= prj.id;
         
         if(mapOfOppIdOwnerProf.get(prj.Opportunities__c) != 'Customer Success Lead' && mapOfOppIdOwnerProf.get(prj.Opportunities__c) != 'System Administrator' )
         {
             listPrjShr.add(prShr);
         }
    }
    if(listPrjShr != null && listPrjShr.size() !=0 )
    {
        insert listPrjShr;
    }
    */
}