Ember.Handlebars.registerBoundHelper('trimString', function(input) {
	var trimmed = input.replace(/[^\w\s]/gi, '');
    if (trimmed.length > 45 ) {
		trimmed = trimmed.substring(0,45) + "...";
    }
    return new Ember.Handlebars.SafeString(trimmed);
});