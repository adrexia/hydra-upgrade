<?php
class HomePage extends Page {

	private static $icon = "mysite/images/sitetree_images/home.png";
	public $pageIcon = "mysite/images/sitetree_images/home.png";

	private static $has_many = array(
		'SliderItems' => 'SliderItem',
		'NewsItems' => 'NewsItem'
	);

	function getCMSFields() {
		$fields = parent::getCMSFields();


		$gridField = new GridField(
			'NewsItems',
			'NewsItems',
			$this->NewsItems(),
			GridFieldConfig_RelationEditor::create());
		$gridField->setModelClass('NewsItem');
		$fields->addFieldToTab('Root.News', $gridField);

		// Carousel tab
		$gridField = new GridField(
			'SliderItems',
			'Slider',
			$this->SliderItems()->sort('Archived'),
			GridFieldConfig_RelationEditor::create());
		$gridField->setModelClass('SliderItem');
		$fields->addFieldToTab('Root.Slider', $gridField);

		return $fields;
	}

}

class HomePage_Controller extends Page_Controller {


	public function getNews($pageSize = 2){
		$items =  $this->NewsItems();
		// Apply pagination
		$list = new AjaxPaginatedList($items, $this->request);
		$list->setPageLength($pageSize);
		return $list;
	}
	
	public function RecentNews($pageSize = 10){
		return $this->NewsItems()->Limit($pageSize);
	}


}