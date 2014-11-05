/*jslint browser: true*/
/*global $, jQuery*/

$(function() {
	"use strict";

	// init Isotope
	var $container = $('.js-isotope').isotope({
		itemSelector: '.item',
		layoutMode: 'masonry',
		gutter: 10,
		resizesContainer: true
	});


	// bind filter button click
	$('.js-filters').on( 'click', '.label', function() {
		var filterValue = $( this ).attr('data-filter');

		$container.isotope({ filter: filterValue });
	});

	// change is-checked class on labels
	$('.js-filters').each( function( i, labelGroup ) {
		var $labelGroup = $( labelGroup );
		$labelGroup.on( 'click', '.label', function() {
			$labelGroup.find('.success').removeClass('success');
			$( this ).addClass('success');
		});
	});

});

