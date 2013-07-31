ZenlabsBeta.ExtensionsView = Ember.View.extend({

	didInsertElement: function(){
		this.displayFilter();
		console.log("dis insert")
	},

	displayFilter: function(){
		var $container = $('#widgetlist');
		console.log("trying", $('#filters'));

		$('#filters a').click(function(){
		  $('.active').removeClass();
		  $(this).addClass('active');

		  var selector = $(this).attr('data-filter');
		  $container.isotope({ filter: selector, layoutMode: 'straightAcross' }, function( $items ) {
			  var len = $items.length;
			  console.log( 'Isotope has filtered for ' + len + ' items' );
			});

		  return false;
		});
	}
});