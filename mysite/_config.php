<?php

global $project;
$project = 'mysite';

global $database;
$database = 'SS_hydracms';

require_once('conf/ConfigureFromEnv.php');

// Set the site locale
i18n::set_locale('en_US');

SiteConfig::add_extension('CustomSiteConfig');
