<?php
/**
 *
 */

class LinkExtension extends DataExtension {

	private static $db = array(
		'Sort' => 'Int'
	);

	private static $has_one = array(
		'Logo' => 'Image',
		'Parent' => 'SiteTree'
	);

	public function updateCMSFields(FieldList $fields) {

		$logo = $fields->dataFieldByName('Logo');

		$fields->removeByName('ParentID');
		$fields->removeByName('Sort');

		$fields->insertAfter($logo,
			'Title'
		);
	}
}
