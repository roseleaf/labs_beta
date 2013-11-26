App.ExtensionsView = Ember.View.extend({
	didInsertElement: function(){
		Ember.run.next (this, this.displayFilter);
	},

	displayFilter: function(){
		var view = this;
		var $container = $('#widgetgrid'),
			$item = $('.item');
		$('#filters a').click(function(){
			$('.active').removeClass();
			$(this).addClass('active');
			$('#appscontainer h1').text($(this).text().capitalize() + " Extensions");
			var selector = $(this).attr('data-filter');
			$container.isotope({ filter: selector, layoutMode: 'fitRows' }, function( $items ) {
				var len = $items.length;
				if ( len < 5 ){
					$('.leftarrow, .rightarrow, .controls').css('visibility', 'hidden');
				} else{
					$('.leftarrow, .rightarrow, .controls').css('visibility', 'visible');
				}
			});
			return false;
		});
	}.observes('controller.recordsLoaded')
});
// $('.active').removeClass();
// $(this).addClass('active');
// $('#appscontainer h1').text($(this).text().capitalize() + " Extensions");
// //get href attr, remove leading #
// var href = $(this).attr('href').replace( /^#/, '' ),
// option = $.deparam( href, true );
// // set hash, triggers hashchange on window
// $.bbq.pushState( option );
// $(window).bind( 'hashchange', function( event ){
// var hashOptions = $.deparam.fragment();
// $container.isotope( hashOptions );
// }).trigger('hashchange');
// return false;
// });