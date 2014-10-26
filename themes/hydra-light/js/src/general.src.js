/*jslint browser: true*/
/*global $, jQuery*/

jQuery(function($) {
	"use strict";

	if($('.editable').length > 0) {
		var editor = new MediumEditor('.editable', {
			anchorInputPlaceholder: 'Type a link',
			buttons: ['bold', 'italic', 'quote', 'link', 'header1', 'header2'],
			cleanPastedHTML: true,
			diffLeft: 20,
			diffTop: 10,
			firstHeader: 'h3',
			secondHeader: 'h4'
		});


		$( "form" ).submit(function( event ) {
			var editable = S('.editable'),
				value = editable.html();
			editable.siblings('textarea').val(value);
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
			$(this).siblings('.ss-pagination').addClass('loading').find('a').html('<span class="text">Loading</span> <span class="loading-icon"><i class="icon-cw element-spinning"></i></span>');
		});

		$('.pagination.endless').on('ssendlessafterpagefetch', function(event){
			$(this).siblings('.ss-pagination').removeClass('loading').find('a').html('<span class="text">Show More</span> <span class="loading-icon"><i class="icon-blank"></i></span>');
		});

	}

});

