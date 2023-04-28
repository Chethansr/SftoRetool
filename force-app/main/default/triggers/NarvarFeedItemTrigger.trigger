trigger NarvarFeedItemTrigger on FeedItem (after insert, after update, after delete) {
    List<FeedItem> items = Trigger.new;
    for (FeedItem fItem : items) {
        String body = Json.serialize(fItem, false);
        ProjectTriggerHandler.handle(body);
    }
}