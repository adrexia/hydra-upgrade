<?php
/**
 * Makes user form submissions more human readable
 */
class SubmittedFormExtension extends DataExtension {


	public function Title() {
		$date = SS_Datetime::create();
		$date->setValue($this->owner->Created);
		$dateReadable = $date->Format('D d M Y') .' at '. $date->Format('g:ia');
		if($this->owner->SubmittedBy()) {
			return '#' . $this->owner->ID .' Submitted by '. $this->owner->SubmittedBy()->getName() . ' on ' . $dateReadable;
		} else {
			return '#' . $this->owner->ID .' Submitted by unknown at ' . $dateReadable;
		}
	}

}
