App.ExtensionView = Ember.View.extend({
	showModal: function(){
		modal: this.createChildView(Ember.View.create({
			templateName: 'disclaimer',
			controller: this.controller,
			dismissModal: function(){
				this.remove();
				$('#overlay').fadeOut(700);
			}
		})).appendTo('body');
		$('#overlay').fadeIn(700);
	}
});