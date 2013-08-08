ZenlabsBeta.WidgetsliderView = Ember.View.extend({
	templateName: 'widgetslider',
	controller: ZenlabsBeta.ExtensionsController,
	didInsertElement: function(){
		this.setGallery();
		this.setBinds();
	},	
	setGallery: function(){
		console.log("setGallery");
		var listwidth = $(".item:first").outerWidth(true) * $('.item').length,
			itemwidth = $(".item:first").outerWidth(true),
			isMouseDown = false,
			maxleft = listwidth - (itemwidth *3.4);

		$("#widgetlist").width(listwidth);
		$(".leftarrow").click(function(){
			console.log( "left pressed" );			
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
		if ($('.item').length == 0 ) {
			$('#sliderlist').hide();
		} else {
			$('#sliderlist').show();
		};
	}.observes('controller.recordsLoaded'),
	setBinds: function(){
		console.log('setBinds');
		$(document).keydown(function(e){
			if (e.keyCode == 37) { 
				console.log('left pressed');
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