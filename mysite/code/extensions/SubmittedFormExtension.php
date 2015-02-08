<?php
/**
 * Makes user form submissions more human readable
 */
class SubmittedFormExtension extends DataExtension {


	public function Title() {
		$date = SS_Datetime::create();
		$date->setValue($this->owner->Created);
		$dateReadable = $date->Format('D d/m/y') .', '. $date->Format('g:ia');
		if($this->owner->SubmittedBy()) {
			return '#' . $this->owner->ID .' '. $this->owner->SubmittedBy()->getName() . ', ' . $dateReadable;
		} else {
			return '#' . $this->owner->ID .' unknown, ' . $dateReadable;
		}
	}

}
