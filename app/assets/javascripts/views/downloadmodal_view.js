App.DownloadModalView = Ember.View.extend({
	attributeBindings: ['data-url'],
	templateName: 'disclaimer',
	//layoutName: 'modal_layout',
	subdomain: '',
	extension: null,
	download: function(url){
		window.location.href = url;
		this.dismissModal();
	},
	dismissModal: function(){
		this.remove();
		$('#overlay').fadeOut(700);
	}
});