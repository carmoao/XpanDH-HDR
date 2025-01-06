ValueSet: ExposureAgentXpandhVS
Id: exposure-agent-xpandh-vs
Title: "Exposure of transmissible agents - Xpandh"
Description: "Xpandh exposure agent value set. This value set includes codes from SNOMED Clinical Terms®: all descendants of 40733004 \"Infectious disease (disorder)\" and ICD-10 all descendants of chapter I: \"Certain infectious and parasitic diseases\""
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false

* codes from system $icd10 where concept descendant-of #I "Certain infectious and parasitic diseases"
* codes from system $sct where concept descendant-of #40733004 "Infectious disease (disorder)"
