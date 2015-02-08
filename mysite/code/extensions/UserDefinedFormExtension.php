<?php
/**
 * Override display gridfield to provide more data
 */

class UserDefinedFormExtension extends DataExtension {

	public function updateCMSFields(FieldList $fields) {
		$submissions = $fields->dataFieldByName('Submissions');

		$config = $submissions->getConfig();

		$config->getComponentByType('GridFieldDataColumns')->setDisplayFields(
			array(
				'ID'=>'ID',
				'SubmittedBy.Name'=>'Submitted By',
				'Created'=>'Created'
			)
		);
	}
}
