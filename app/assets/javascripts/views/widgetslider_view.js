ZenlabsBeta.WidgetsliderView = Ember.View.extend({
	templateName: 'widgetslider',
	controller: ZenlabsBeta.ExtensionsController,
	didInsertElement: function(){
		this.setGallery();
	},
	parentViewDidChange: function(){
		this.setGallery();
		// this.setBinds();
	},	
	setGallery: function(){
		var listwidth = $(".item:first").outerWidth(true) * $('.item').length,
			itemwidth = $(".item:first").outerWidth(true),
			isMouseDown = false,
			maxleft = listwidth - (itemwidth *4.55);
		getLeftPos = function(){ return $('.listspan').scrollLeft(); };
		fadeArrows = function(){
			var leftPos = getLeftPos();
			if (leftPos <= 0) {
				$('.leftarrow').fadeOut();	
				$('.rightarrow').fadeIn();							
			} else if (leftPos >= maxleft) {
				$('.rightarrow').fadeOut();	
				$('.leftarrow').fadeIn();			
			} else if ( 0 < leftPos < maxleft ) {
				$('.leftarrow, .rightarrow').fadeIn();
			}
		};
		$('.leftarrow, .rightarrow').unbind('click');
		$("#widgetlist").width(listwidth);
		fadeArrows();
		$(".leftarrow").click(function(){
			$('.rightarrow').fadeIn();
			var leftPos = getLeftPos();
			var scrollValue = leftPos + itemwidth *-3.4;
			if (leftPos > 0) {
				$('.listspan').animate({scrollLeft: scrollValue}, 800);
			} else {
				$('.leftarrow').fadeOut();				
			};
		});
		$('.listspan').scroll( function(){
			fadeArrows();
		});
		$(".rightarrow").click(function(){
			var leftPos = getLeftPos();
			$('.leftarrow').fadeIn();			
			if (leftPos < maxleft ){
				$('.listspan').animate({scrollLeft: leftPos + itemwidth *3.4}, 800);
			} else {
				$('.rightarrow').fadeOut();
			};
		})
		.dblclick(function(){
			$('.listspan').animate({scrollLeft: maxleft}, 800);
		});
		if ($('.item').length <= 1 ) {
			$('#sliderlist').hide();
		} else {
			$('#sliderlist').show();
		};
	}.observes('controller.recordsLoaded'),
	setBinds: function(){
		console.log('setBinds');
		$(document).keydown(function(e){
			if (e.keyCode == 37) { 
				$('#widgetlist').stop(true);		       
			  	$('.leftarrow').click();
				return false;
			} else if (e.keyCode == 39) {
				$('#widgetlist').stop(true);		       		    	
				$('.rightarrow').click();
				return false;
			};
		});
	}
});