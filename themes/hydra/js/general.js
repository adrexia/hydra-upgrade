/*jslint browser: true*/
/*global $, jQuery*/

$(function() {
	"use strict";

	$('.flexslider').flexslider({
		pauseOnAction: false,
		animation: "slide",
		slideshowSpeed:10000,
		pausePlay: true,
		pauseText: " ",
		playText: " "
	});

	$('.pagination').ssendless({
		indicatorElement: $('.pagination-indicator'),
		contentSelector: '.pagination-content'
	});

	// $('div.pagination').sspagination({
	// 	templates: {
	// 		main:
	// 			'<div class="ss-pagination btn primary large">'+
	// 				'<a href="#" data-page-number="<%= nextPage %>">More</a>'+
	// 			'</div>'
	// 	}
	// });

});

