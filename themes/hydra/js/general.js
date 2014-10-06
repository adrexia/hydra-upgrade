/*jslint browser: true*/
/*global $, jQuery*/

$(function() {
	"use strict";

	if($('.flexslider').length > 0){

		$('.flexslider').flexslider({
			pauseOnAction: false,
			animation: "slide",
			slideshowSpeed:10000,
			pausePlay: true,
			pauseText: " ",
			playText: " "
		});
	}


	if($('.pagination').length > 0){

			// Pagination - endless
		$('.pagination.endless').ssendless({
			contentSelector: '.pagination-content',
			templates: {
				main:
					'<div class="ss-pagination">'+
						'<a href="#" data-page-number="<%= nextPage %>"><span class="text">Show More</span> <span class="loading-icon"><i class="icon-blank">&nbsp;</i></span></a>'+
					'</div>'
			}
		});

		$('.pagination-wrap.endless-scroll').addClass('ssendless');

		$('.pagination.endless').on('ssendlessbeforepagefetch', function(event){
			$(this).siblings('.ss-pagination').addClass('loading').find('a').html('<span class="text">Loading</span> <span class="loading-icon"><i class="icon-cw icon-spin"></i></span>');
		});

		$('.pagination.endless').on('ssendlessafterpagefetch', function(event){
			$(this).siblings('.ss-pagination').removeClass('loading').find('a').html('<span class="text">Show More</span> <span class="loading-icon"><i class="icon-blank"></i></span>');
		});

	}

});

