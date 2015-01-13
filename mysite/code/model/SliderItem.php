<?php

class SliderItem extends DataObject {
	private static $db = array(
		'Title' => 'Varchar(255)',
		'Attribution'=>'Varchar(255)',
		'Caption' => 'Text',
		'Archived' => 'Boolean',
		'Sort'=>'Int'
	);

	private static $has_one = array(
		'Parent' => 'Page',
		'Image' => 'Image',
		'Link' => 'SiteTree'
	);

	private static $summary_fields = array(
		'ImageThumb' => 'Image',
		'Title' => 'Title',
		'Caption' => 'Text',
		'Link.Title' => 'Link',
		'ArchivedReadable' => 'Current Status'
	);

	public static $default_sort = 'Sort';

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('Archived');
		$fields->removeByName('Sort');

		$fields->addFieldToTab('Root.Main', new TreeDropdownField('LinkID', 'Link', 'SiteTree'));

		$fields->addFieldToTab('Root.Main', $group = new CompositeField(
			$label = new LabelField("LabelArchive","Archive this slider item?"),
			new CheckboxField('Archived', '')
		));

		$group->addExtraClass("field special");
		$label->addExtraClass("left");

		$fields->removeByName('ParentID');

		return $fields;
	}

	public function ImageThumb(){ 
		return $this->Image()->SetWidth(50); 
	}

	public function ArchivedReadable(){
		if($this->Archived == 1) return _t('GridField.Archived', 'Archived');
		return _t('GridField.Live', 'Live');
	}

	public function canCreate($member = null) {
		return $this->Parent()->canCreate($member);
	}

	public function canEdit($member = null) {
		return $this->Parent()->canEdit($member);
	}

	public function canDelete($member = null) {
		return $this->Parent()->canDelete($member);
	}

	public function canView($member = null) {
		return $this->Parent()->canView($member);
	}

}