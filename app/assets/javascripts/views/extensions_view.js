ZenlabsBeta.ExtensionsView = Ember.View.extend({
	sidenavView: Ember.View.extend({
		templateName: 'sidenav',
		displayFilter: function(){
		  var $container = $('#widgetlist');
		  console.log("found container?", $container);
			$container.isotope({
			  // options
			  itemSelector : '.item',
			  layoutMode : 'straightDown'
			});
			$('#filters a').click(function(){
			  var selector = $(this).attr('data-filter');
			  $container.isotope({ filter: selector }, function( $items ) {
				  var len = $items.length;
				  console.log( 'Isotope has filtered for ' + len + ' items' );
				});
			  console.log("yoo?", selector);

			  return false;
			});
		},
		didInsertElement: function(){
			this.displayFilter();

		}	
	})
});