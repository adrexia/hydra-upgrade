<?php
class HomePage extends Page {

	static $icon = "mysite/images/sitetree_images/home.png";
	public $pageIcon = "mysite/images/sitetree_images/home.png";

	static $has_many = array(
		'SliderItems' => 'SliderItem',
		'Quicklinks' => 'Quicklink'
	);

	function getCMSFields() {
		$fields = parent::getCMSFields();

		// Carousel tab
		$gridField = new GridField(
			'SliderItems',
			'Slider',
			$this->SliderItems()->sort('Archived'),
			GridFieldConfig_RelationEditor::create());
		$gridField->setModelClass('SliderItem');
		$fields->addFieldToTab('Root.Slider', $gridField);

		$gridField = new GridField(
			'Quicklinks',
			'Quicklinks',
			$this->Quicklinks(),
			GridFieldConfig_RelationEditor::create());
		$gridField->setModelClass('Quicklink');
		$fields->addFieldToTab('Root.Quicklinks', $gridField);

		return $fields;
	}

}

class HomePage_Controller extends Page_Controller {


}