({
    clickCreateItem : function(component, event, helper) {
        var validCamping = component.find('campingform').reduce(function (validSoFar, inputCmp) {
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);

        if(validCamping){
            var newItem = component.get("v.newItem");
            console.log("Create expense: " + JSON.stringify(newItem));
            helper.createItem(component, newItem);
        }
    }
})