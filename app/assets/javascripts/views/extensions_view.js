ZenlabsBeta.ExtensionsView = Ember.View.extend({
	didInsertElement: function(){
		this.displayFilter();
		this.setGallery();
		this.setBinds();
	},

	displayFilter: function(){
		var view = this;
		var $container = $('#widgetlist'),
			$item = $('.item');
		// $('#widgetlist').width(1320);
		console.log("trying", $item);
		$('#filters a').click(function(){
			$('.active').removeClass();
			$(this).addClass('active');
			$('#appscontainer h1').text($(this).text().capitalize() + " Extensions");
			var selector = $(this).attr('data-filter');
			$container.isotope({ filter: selector, layoutMode: 'straightAcross' }, function( $items ) {
				var len = $items.length;
				console.log("isotoping", len);
				if ( len < 5 ){
					$('.leftarrow, .rightarrow, .controls').css('visibility', 'hidden');
				} else{
					$('.leftarrow, .rightarrow, .controls').css('visibility', 'visible');
					view.setGallery();
				}
			});
			return false;
		});
	}.observes('controller.model'),
	setGallery: function(){
		var listwidth = $(".item:first").outerWidth(true) * $('.item').length,
			itemwidth = $(".item:first").outerWidth(true),
			isMouseDown = false,
			maxleft = listwidth - (itemwidth *3.4);
		$("#widgetlist").width(listwidth);
		$(".leftarrow").click(function(){
			var min = $('.listspan').scrollLeft();
			if (min > 0) {
				$('.listspan').animate({scrollLeft: 0}, 800);
			};
		});
		$(".rightarrow").click(function(){
			var min = $('.listspan').scrollLeft();
			if (min < maxleft ){
				$('.listspan').animate({scrollLeft: min + itemwidth *3.4}, 800);
			};
		})
		.dblclick(function(){
			$('.listspan').animate({scrollLeft: maxleft}, 800);
		});
	},
	setBinds: function(){
		$(document).keydown(function(e){
			if (e.keyCode == 37) { 
				console.log( "left pressed" );
				$('#widgetlist').stop(true);		       
			  	$('.leftarrow').click();
				return false;
			} else if (e.keyCode == 39) {
				console.log("right pressed");
				$('#widgetlist').stop(true);		       		    	
				$('.rightarrow').click();
				return false;
			};
			});
	}
});