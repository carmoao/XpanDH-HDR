//===================================================
//  Logical Model			    xph-hdr-discharge.fsh
//===================================================
Logical: HdrEHNRecommendations
Id: HDRRecommendations
Title: "A.2.9 - Care plan and other recommendations after discharge (eHN)"
Description:  """Hospital Discharge Report - Care plan and other recommendations after discharge - A.2.9 eHN
Maturity Level: 0 Draft"""

* carePlan 0..* BackboneElement "A.2.9.1 - Care plan" """Care plan after discharge. Multiple care plans could be provided."""
* carePlan.title 0..1 string "A.2.9.1.1 - Title" """Human-friendly name for the care plan (e.g. Hip replacement care plan)"""
* carePlan.addresses 0..* CodeableConcept "A.2.9.1.2 - Addresses" """Identifies the conditions/problems/concerns/diagnoses/etc. whose management and/or mitigation are handled by this plan. This element provides a linkage to the conditions recorded in the diagnostic summary section."""
* carePlan.description 0..1 string "A.2.9.1.3 - Description" """A description of the scope and nature of the plan."""
* carePlan.planPeriod 0..1 Period "A.2.9.1.4 - Plan Period" """Indicates when the plan did (or is intended to) come into effect and end."""
* carePlan.details 0..* BackboneElement "A.2.9.1.5 - Other details" """Other structured and coded details, care team, goals to be achieved."""
* carePlan.activity 0..* BackboneElement "A.2.9.1.6 - Activity" """Actions to occur as part of the plan."""
* carePlan.activity.kind 0..1 CodeableConcept "A.2.9.1.6.1 - Kind" """A description of the type of care plan activity. For example, a MedicationRequest, a ServiceRequest, or a CommunicationRequest."""
* carePlan.activity.description 0..1 string "A.2.9.1.6.2 - Activity description" """A detailed description of the activity."""
* carePlan.activity.attribute 0..* BackboneElement "A.2.9.1.6.3 - Specific attributes" """Specific structured attributes per each activity type expressed by the Activity kind element, E.g., specific attributes for prescription request, appointment, etc."""
* medicationSummary 1..* BackboneElement "A.2.9.2 - Medication summary" """Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued."""
* medicationSummary.reason 0..* CodeableConcept "A.2.9.2.1 - Medication reason" """The reason why the medication is or was prescribed or used. It provides a link to the Past or current health condition(s) or problem(s) that the patient has had or has and for which this medication was prescribed."""
* medicationSummary.changeReason 0..1 CodeableConcept "A.2.9.2.2 - Reason for change" """Reason for change of medication"""
* medicationSummary.productCode 1..1 CodeableConcept "A.2.9.2.3 - Code" """Product code."""
* medicationSummary.productName 1..1 string "A.2.9.2.4 - Brand name" """Brand name if biological medicinal product or when justified by the health professional (ref. Commission Directive 2012/52/EU)"""
* medicationSummary.activeIngredient 0..* CodeableConcept "A.2.9.2.5 - Active ingredient list" """Substance that alone or in combination with one or more other ingredients produces the intended activity of a medicinal product. Example: \"paracetamol\" """
* medicationSummary.strength 0..* Ratio "A.2.9.2.6 - Strength" """The content of the active ingredient expressed quantifiably per dosage unit, per unit of volume or per unit of weight, according to the pharmaceutical dose form. Example: 500 mg per tablet"""
* medicationSummary.doseForm 0..1 CodeableConcept "A.2.9.2.7 - Pharmaceutical dose form" """The form in which a pharmaceutical product is presented in the medicinal product package (e.g. tablet, syrup)"""
* medicationSummary.dosageRegimen 0..* BackboneElement "A.2.9.2.8 - Dosage Regimen" """Number of units per intake and frequency of intake over a specified duration of time.
Example: 1 tablet every 24h, for 10 days"""
* medicationSummary.route 0..1 CodeableConcept "A.2.9.2.9 - Route of administration" """Path by which the pharmaceutical product is taken into or makes contact with the body."""
* medicationSummary.period 0..1 Period "A.2.9.2.10 - Period of treatment" """The interval of time during which it is being asserted that the patient is/was/will be taking the medication (or was not taking)."""
* medicationSummary.daysSupplied 1..1 BackboneElement "A.2.9.2.11 - Days supplied" """Number of days for which the patient was provided with the drug. Supply is intended to either hand over the medicine or write out a prescription. A 0 value indicates that the patient has not been provided with the drug (e.g. if the patient has a sufficient supply of the drug)"""
* Recommendations 0..* string "A.2.9.3 - Other recommendations" """Other recommendations (advice) after discharge. Multiple recommendations could be provided. E.g., recommendation to suggest hip replacement, reduce number of cigarettes, stop smoking, increase physical exercises, etc."""


//--------------------------------------------------------------------------------
//  Comments - Preferred Code systems
//--------------------------------------------------------------------------------

* carePlan.addresses ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed"""
* carePlan.activity.kind ^comment = """hl7:resource-types"""

* medicationSummary.reason ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed"""
* medicationSummary.changeReason ^comment = """hl7:reason-medication-status-codes"""
* medicationSummary.productCode ^comment = """IDMP"""
* medicationSummary.activeIngredient ^comment = """ATC (IDMP / EMA SPOR SMS)"""
* medicationSummary.strength ^comment = """UCUM
EDQM Standard terms"""
* medicationSummary.doseForm ^comment = """EDQM Standard terms"""
* medicationSummary.route ^comment = """EDQM Standard terms"""
* medicationSummary.daysSupplied ^comment = """UCUM"""