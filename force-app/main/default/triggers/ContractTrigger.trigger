/**
* link opportunity ti renewal opportunity
* Modified: 1/Aug/2021 : Epitomecloud
*/ 
trigger ContractTrigger on Contract (before insert, after insert, after update) {
    new ContractTriggerHandler().run();
}