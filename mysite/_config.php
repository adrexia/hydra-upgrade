<?php

global $project;
$project = 'mysite';

global $database;

// find the database name from the environment file
if(defined('SS_DATABASE_NAME') && SS_DATABASE_NAME) {
	$database = SS_DATABASE_NAME;
} else {
	$database = 'SS_hydracms';
}

require_once('conf/ConfigureFromEnv.php');

// Set the site locale
i18n::set_locale('en_US');

if (!Director::isDev()) {
	SS_Log::add_writer(new SS_LogEmailWriter('adrexia@gmail.com'), SS_Log::ERR, '<=');
}