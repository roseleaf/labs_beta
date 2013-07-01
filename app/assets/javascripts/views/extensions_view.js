ZenlabsBeta.ExtensionsView = Ember.View.extend({
	sidenavView: Ember.View.extend({
		templateName: 'sidenav',
		displayFilter: function(){

		  var $container = $('#widgetlist');

			$('#filters a').click(function(){
			  $('.active').removeClass();
			  $(this).addClass('active');

			  var selector = $(this).attr('data-filter');
			  $container.isotope({ filter: selector }, function( $items ) {
				  var len = $items.length;
				  console.log( 'Isotope has filtered for ' + len + ' items' );
				});

			  return false;
			});
		},
		didInsertElement: function(){
			this.displayFilter();

		}	
	}),
	renderTemplate: function(){
		this.render();
		$container.isotope({
		  // options
		  itemSelector : '.item',
		  layoutMode: 'straightDown'
		});		
	}
});