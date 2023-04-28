trigger NarvarProductTrigger on Product2 (after insert, after update, after delete) {
	List<Product2> products = Trigger.new;
    for (Product2 p : products) {
        String pString = Json.serialize(p, false);
        ProjectTriggerHandler.handle(pString);
    }
}