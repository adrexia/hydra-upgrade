<?php
class HomePage extends Page {

	private static $icon = "mysite/images/sitetree_images/home.png";
	public $pageIcon = "mysite/images/sitetree_images/home.png";

	private static $has_many = array(
		'SliderItems' => 'SliderItem',
		'NewsItems' => 'NewsItem'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();


		$gridField = new GridField(
			'NewsItems',
			'NewsItems',
			$this->NewsItems()->sort(array('Sort'=>'ASC','Archived'=>'ASC')),
			$config = GridFieldConfig_RelationEditor::create()
		);
		$gridField->setModelClass('NewsItem');
		$fields->addFieldToTab('Root.News', $gridField);
		$config->addComponent(new GridFieldOrderableRows());


		// Carousel tab
		$gridField = new GridField(
			'SliderItems',
			'Slider',
			$this->SliderItems()->sort(array('Sort'=>'ASC','Archived'=>'ASC')),
			$sliderConf =GridFieldConfig_RelationEditor::create());
		$gridField->setModelClass('SliderItem');
		$fields->addFieldToTab('Root.Slider', $gridField);
		$sliderConf->addComponent(new GridFieldOrderableRows());

		return $fields;
	}

}

class HomePage_Controller extends Page_Controller {


	public function getNews($pageSize = 5){
		$items =  $this->NewsItems()->sort(array('Sort'=>'ASC','Created'=>'ASC'));
		// Apply pagination
		$list = new AjaxPaginatedList($items, $this->request);
		$list->setPageLength($pageSize);
		return $list;
	}
	
	public function RecentNews($pageSize = 10){
		return $this->NewsItems()->Limit($pageSize);
	}


}