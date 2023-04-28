/**
 * Created by Bartłomiej Rasztabiga (LaunchpadQ2C) on 24.04.2020.
 * Modified: 1/Aug/2021 : Epitomecloud
 */
trigger QuoteTrigger on SBQQ__Quote__c (before insert, before update, after update) {
    new QuoteTriggerHandler().run();
}