// --------------------------------------------------
ValueSet:     HdrEncounterClassXpandhVS
Id:	          hdr-encounterClass-xpandh-vs
Title:	      "Encounter Class Value Set"
Description:  """Hospital Discharge Report Encounter Class specifies a general class of inpatient encounter as being accute, nonaccute, emergency, short stay ... """

* insert SetFmmandStatusRule (1, draft)
* ^experimental = false
* $v3-ActCode#IMP	    "inpatient encounter"  // should we have this general category ?
* $v3-ActCode#ACUTE	    "inpatient acute"
* $v3-ActCode#NONAC	    "inpatient non-acute"
* $v3-ActCode#OBSENC	"observation encounter"
//* $v3-ActCode#PRENC	    "pre-admission"  // should we have pre-admission if this is value set for hospital discharge report?
* $v3-ActCode#SS	    "short stay"


// --------------------------------------------------
ValueSet:   HdrEncounterTypeXpandhVS
Id:         hdr-encounter-type-xpandh-vs
Title:      "In-patient Encounter Type Value Set"
Description:  """Hospital Discharge Report Encounter Type allows to classify encounter using general type of care provision regimen during the inpatient encounter. Value set includes concepts from the SNOMED CT descendants of 225351009 (Care provision regime) but needs to be further dicsussed"""
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept is-a #225351009 "Care provision regime"
