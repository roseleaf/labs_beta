App.ExtensionView = Ember.View.extend({
	modal: null,
	showModal: function() {
		this.modal = this.createChildView(App.DownloadModalView.create({
			extension: this.controller.get('content')
		})).appendTo('body');
		$('#overlay').fadeIn(700);
		return this.modal;
	},
	willClearRender: function(){
		if (this.modal) {
			this.modal.dismissModal();
		}
	}
});