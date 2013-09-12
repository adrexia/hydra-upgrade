<?php

class Quicklink extends DataObject {
	private static $db = array(
		'Name' => 'Varchar(255)',
		'ExternalLink' => 'Varchar(255)'
	);

	private static $has_one = array(
		'Parent' => 'Page',
		'InternalLink' => 'SiteTree'
	);

	private static $summary_fields = array(
		'Name' => 'Name',
		'InternalLink.Title' => 'Internal Link',
		'ExternalLink' => 'External Link'
	);

	function getLink() {
		if ($this->ExternalLink) {
			return $this->ExternalLink;
		} elseif ($this->InternalLinkID) {
			return $this->InternalLink()->Link();
		}
	}

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('ParentID');

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
}
