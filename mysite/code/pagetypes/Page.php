<?php
class Page extends SiteTree {

	private static $icon = "mysite/images/sitetree_images/page.png";

	private static $db = array(
	);

	private static $has_one = array(
	);

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

	}



	public function getGameListingPage(){
		return GameListingPage::get()->First();
	}

	public function getCurrentSliderItems() {
		return $this->SliderItems()->filter('Archived', false);
	}

	public function getMemberProfilePage(){
		return MemberProfilePage::get()->First();
	}

	public function getCurrentEvent(){
		return SiteConfig::current_site_config()->CurrentEvent();
	}

	public function HomePage() {
		return HomePage::get_one('HomePage');
	}

	public function getGroupedGames(){
		return GroupedList::create(Game::get()->filter(array(
			'ParentID' => $this->getCurrentEvent()->ID,
			'Status'=> true
			))->sort('Session'));
	}

	public function LoginLink() {
		return Controller::join_links(
			Injector::inst()->get('Security')->Link(),
			'login',
			'?BackURL=' . urlencode($this->Link())
		);
	}

	public function CMSAccess() { 
		return Permission::check('ADMIN') || Permission::check('CMS_ACCESS_LeftAndMain');
	}

}
