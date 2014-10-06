<?php

class Quicklink extends DataObject {
	private static $db = array(
		'Name' => 'Varchar(255)',
		'ExternalLink' => 'Varchar(255)',
		'Order'=>'Int'
	);

	private static $has_one = array(
		'InternalLink' => 'SiteTree',
		'Parent' => 'SiteConfig',
	);

	private static $summary_fields = array(
		'Name' => 'Name',
		'InternalLink.Title' => 'Internal Link',
		'ExternalLink' => 'External Link'
	);

	public static $default_sort = 'Order';

	public function getLink() {
		if ($this->ExternalLink) {
			return $this->ExternalLink;
		} elseif ($this->InternalLinkID) {
			return $this->InternalLink()->Link();
		}
	}

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('ParentID');
		$fields->removeByName('Order');


		$externalLinkField = $fields->fieldByName('Root.Main.ExternalLink');

		$fields->removeByName('ExternalLink');
		$fields->removeByName('InternalLinkID');
		

		$fields->addFieldToTab('Root.Main',CompositeField::create(
			array(
				$internalLinkField = new TreeDropdownField('InternalLinkID', 'Internal Link', 'SiteTree'),
				$externalLinkField,
				$wrap = new CompositeField(
					$extraLabel = new LiteralField('NoteOverride', '<div class="message good notice">Note:  If you specify an External Link, the Internal Link will be ignored.</div>')
				)
			)
		));

		$internalLinkField->addExtraClass('noBorder');
		$externalLinkField->addExtraClass('noBorder');

		$fields->insertBefore(new LiteralField('Note', '<p>Use this to specify a link to a page either on this site (Internal Link) or another site (External Link).</p>'), 'Name');

		return $fields;
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
