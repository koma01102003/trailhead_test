({
	packItem : function(component, event, helper) {
        debugger;
		let item = component.get("v.item");
        item.Packed__c = true;
        component.set("v.item", item);
        component.set("v.disabled", true)
	},
    clickPacked: function(component, event, helper) {
        var item = component.get("v.item");
        var updateEvent = component.getEvent("updateItem");
        updateEvent.setParams({ "item": item });
        updateEvent.fire();
    }
})