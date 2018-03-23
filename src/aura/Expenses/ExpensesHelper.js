({
    createExpense: function(component, expense) {
        console.log("Create expense: " + JSON.stringify(expense));
        this.saveExpense(component, expense, function(response){
            var state = response.getState();
            debugger;
            if (state === "SUCCESS") {
                var expenses = component.get("v.expenses");
                expenses.push(response.getReturnValue());
                component.set("v.expenses", expenses);
            }
        });
    },

    updateExpense: function(component, expense) {
        console.log("Create expense: " + JSON.stringify(expense));
        this.saveExpense(component, expense);
    },

    saveExpense: function(component, expense, callback) {
		debugger;
        var action = component.get("c.saveExpense");
        action.setParams({
            "expense": expense
        });
        if (callback) {
            action.setCallback(this, callback);
        }
        $A.enqueueAction(action);
    },
})