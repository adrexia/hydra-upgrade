<?php

class NewsItem extends DataObject {
	private static $db = array(
		'Title' => 'Varchar(255)',
		'Author' => 'Varchar(255)',
		'Content' => 'HTMLText',
		'Archived' => 'Boolean' 
	);

	private static $has_one = array(
		'Parent' => 'Page',
	);

	private static $summary_fields = array(
		'Title' => 'Title',
		'Content' => 'Content',
		'ArchivedReadable' => 'Current Status' 
	);

	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('Archived');

		$fields->addFieldToTab('Root.Main', $group = new CompositeField(
			$label = new LabelField("LabelArchive","Archive this news item?"),
			new CheckboxField('Archived', '')
		));

		$group->addExtraClass("field special");
		$label->addExtraClass("left");

		$fields->removeByName('ParentID');

		return $fields;
	}

	function ArchivedReadable(){
		if($this->Archived == 1) return _t('GridField.Archived', 'Archived');
		return _t('GridField.Live', 'Live');
	}

}