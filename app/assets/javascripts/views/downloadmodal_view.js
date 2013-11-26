App.DownloadModalView = Ember.View.extend({
	templateName: 'disclaimer',
	//layoutName: 'modal_layout',
	subdomain: '',
	extension: null,
	dismissModal: function(){
		this.remove();
		$('#overlay').fadeOut(700);
	}
});