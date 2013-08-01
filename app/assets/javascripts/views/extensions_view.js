ZenlabsBeta.ExtensionsView = Ember.View.extend({
	didInsertElement: function(){
		this.displayFilter();
		this.setGallery();
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
		console.log("when!", $('.item'));
		var listwidth = $(".item:first").outerWidth(true) * $('.item').length,
			itemwidth = $(".item:first").outerWidth(true),
			isMouseDown = false,
			maxleft = listwidth - (itemwidth *3.4);
		$("#widgetlist").width(listwidth);
		$(".leftarrow").click(function(){
			$('.listspan').animate({scrollLeft: 0}, 800);
		});
		$(".rightarrow").mousedown(function(){
			var min = $('.listspan').scrollLeft();
			while (min < maxleft ){
				$('.listspan').animate({scrollLeft: min}, 100);
				min += 45;
			};
		})
		.mouseup(function(){
			$('.listspan').stop(true);
		})
		.dblclick(function(){
			$('.listspan').animate({scrollLeft: maxleft}, 800);
		});
	}.observes('controller.model')
});