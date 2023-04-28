trigger NarvarFeedCommentTrigger on FeedComment (after insert, after update, after delete) {
	List<FeedComment> feedComments = Trigger.new;
    for (FeedComment comment : feedComments) {
        String commentString = Json.serialize(comment, false);
        ProjectTriggerHandler.handle(commentString);
    }
}