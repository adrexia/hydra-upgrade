<?php
class Page extends SiteTree {

	static $icon = "mysite/images/sitetree_images/page.png";

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

		// Include base scripts that are needed on all pages
		Requirements::combine_files('scripts.js', $this->getScripts());

		// Extra folder to keep the relative paths consistent when combining.
		Requirements::set_combined_files_folder(ASSETS_DIR . '/_combinedfiles/' . SSViewer::get_theme_folder());
	}

	public function getScripts(){
		$ThemeDir = SSViewer::get_theme_folder();

		return array(
			"$ThemeDir/js/libs/modernizr-2.6.2.min.js",
			"$ThemeDir/js/libs/jquery-1.10.2.min.js",
			"$ThemeDir/js/libs/jquery-ui-1.10.3.custom.min.js",
			"frontend/javascript/underscore.js",
			"framework/admin/javascript/lib.js",
			"frontend/javascript/jquery.ss.pagination.js",
			"frontend/javascript/jquery.ss.endless.js",
			"$ThemeDir/js/libs/gumby.js",
			"$ThemeDir/js/libs/ui/gumby.retina.js",
			"$ThemeDir/js/libs/ui/gumby.fixed.js",
			"$ThemeDir/js/libs/ui/gumby.skiplink.js",
			"$ThemeDir/js/libs/ui/gumby.toggleswitch.js",
			"$ThemeDir/js/libs/ui/gumby.checkbox.js",
			"$ThemeDir/js/libs/ui/gumby.radiobtn.js",
			"$ThemeDir/js/libs/ui/gumby.tabs.js",
			"$ThemeDir/js/libs/ui/gumby.navbar.js",
			"$ThemeDir/js/libs/ui/gumby.fittext.js",
			"$ThemeDir/js/libs/ui/jquery.validation.js",
			"$ThemeDir/js/libs/gumby.init.js",
			"$ThemeDir/js/libs/jquery.flexslider.js",
			"$ThemeDir/js/general.js"
		);
	}

	function getCurrentSliderItems() {
		return $this->SliderItems()->filter('Archived', false);
	}

}
