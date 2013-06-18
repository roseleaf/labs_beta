$(document).ready(function(){
	var mobile = $('#mobile-more'), 
	htmlm = $('#html-more'), 
	cond = $('#conditional-more'), 
	spoke = $('#spoke-more'), 
	quick = $('#quick-more'),
	allBoxes = [].concat(mobile, htmlm, cond, spoke, quick);

	var hideall = function(){
		$.each(arguments, function(i, item){
			for(y = 0; y < item.length; y++){
			$(item[y]).hide();
			}
		});
	};
	hideall(allBoxes);
	$('a').click(function(e){e.stopPropagation();});
	$('#click-mobile-more').click(function(e){e.stopPropagation(); $(mobile).slideToggle('slow', 'linear')});
	$('*').not("#click-mobile-more, a").click(function(){if ($(mobile).is(':visible')){$(mobile).slideUp();}});

	$('#click-html-more').click(function(e){e.stopPropagation(); $(htmlm).slideToggle('slow', 'linear')});
	$('*').not("#click-html-more, a").click(function(){if ($(htmlm).is(':visible')){$(htmlm).slideUp();}});

	$('#click-conditional-more').click(function(e){e.stopPropagation(); $(cond).slideToggle('slow', 'linear')});
	$('*').not("#click-conditional-more, a").click(function(){if ($(cond).is(':visible')){$(cond).slideUp();}});

	$('#click-spoke-more').click(function(e){e.stopPropagation(); $(spoke).slideToggle('slow', 'linear')});
	$('*').not("#click-spoke-more, a").click(function(){if ($(spoke).is(':visible')){$(spoke).slideUp();}});

	$('#click-quick-more').click(function(e){e.stopPropagation(); $(quick).slideToggle('slow', 'linear')});
	$('*').not("#click-quick-more, a").click(function(){if ($(quick).is(':visible')){$(quick).slideUp();}});
	$('.whitebox :first, #generic-section').click(function(){hideall(allBoxes)});


	switch(window.location.hash){
		case "#click-html-more":
		$(htmlm).show();
		break;
		case "#click-conditional-more":
		$(cond).show();
	};
});