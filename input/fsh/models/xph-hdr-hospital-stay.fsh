//===================================================
//  Logical Model			xph-hdr-hospital-stay.fsh
//===================================================
Logical: HdrEHNHospitalStay
Id: HDRHospitalStay
Title: "A.2.7 - Hospital stay (eHN)"
Description:  """Hospital Discharge Report - Hospital stay - A.2.7 eHN
Maturity Level: 0 Draft"""

* diagnosticSummary 1..* BackboneElement "A.2.7.1 - Diagnostic summary" """All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary differentiates, in accordance with the international recommendation, between problems treated during hospital stay and other (untreated) problems. Treated problems are problems that were the subject of diagnostics, therapy, nursing, or (continuous) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA), conditions acquired during hospital stay (HAC) and problems that cannot be classified as being of any of the two (N/A). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation, after all examinations. This section contains concise, well specified, codeable, summary of problems. Problems are ordered by importance (main problems first) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section."""
* diagnosticSummary.problemDescription 1..1 string "A.2.7.1.1 - Problem description" """Problem specification in narrative form"""
* diagnosticSummary.problemDetails 0..* BackboneElement "A.2.7.1.2 - Problem details" """Problem details include code that identifies problem, specification of the body structure, laterality, and other aspects of the problem."""
* diagnosticSummary.onsetDate 1..1 dateTime "A.2.7.1.3 - Onset date" """Onset date of a problem/condition"""
* diagnosticSummary.endDate 0..1 dateTime "A.2.7.1.4 - End date" """The date or estimated date that the condition resolved or went into remission."""
* diagnosticSummary.category 1..1 CodeableConcept "A.2.7.1.5 - Category" """Category of the problem allows flagging for conditions acquired during hospital stay."""
* diagnosticSummary.treatmentClass 1..1 CodeableConcept "A.2.7.1.6 - Treatment class" """Class of the problem (treated, other) in relation to the hospital encounter. Treated problems were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the hospital encounter. At least one problem should be marked as Treated. Other problems are recorded only if they are important for continuity of care (after discharge)."""
* diagnosticSummary.clinicalStatus 0..1 CodeableConcept "A.2.7.1.7 - Clinical status" """Status of the condition/problem (active, resolved, inactive, ...)"""
* diagnosticSummary.resolution 0..1 BackboneElement "A.2.7.1.8 - Resolution circumstances" """Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.). This field includes "free text" if the resolution circumstances are not already included in other fields such as surgical procedure, medical device, etc., e.g. hepatic cystectomy (this will be the resolution circumstances for the problem "hepatic cyst" and will be included in surgical procedures)."""
* diagnosticSummary.severity 0..1 CodeableConcept "A.2.7.1.9 - Severity" """A subjective assessment of the severity of the condition as evaluated by the clinician."""
* diagnosticSummary.stage 0..* CodeableConcept "A.2.7.1.10 - Stage" """Stage/grade usually assessed formally using a specific staging/grading system. Multiple assessment systems could be used."""
* significantProcedures 1..* BackboneElement "A.2.7.2 - Significant procedures" """Significant surgical and non-surgical procedures performed during hospitalisation which are significant for continuity of care, e.g. surgeries and other "instrumental" interventions (endoscopic, intravascular), chemotherapy, radiotherapy, purification methods (dialysis, hemoperfusion), circulation support methods (counterpulsation, etc.), administration of blood derivatives or others.
This section does not include purely diagnostic procedures (MRI, CT, etc.). If no significant performance has been performed, this fact must be explicitly stated using the IPS Absent and Unknown Data."""
* significantProcedures.procedureCode 0..* CodeableConcept "A.2.7.2.1 - Procedure code" """Procedure code"""
* significantProcedures.description 1..1 string "A.2.7.2.2 - Procedure description" """Narrative description of the procedure"""
* significantProcedures.bodySite 0..1 CodeableConcept "A.2.7.2.3 - Body site" """Procedure target body site and laterality"""
* significantProcedures.date 1..1 dateTime "A.2.7.2.4 - Procedure date" """Date and time when procedure was performed"""
* significantProcedures.reason 0..* CodeableConcept "A.2.7.2.5 - Procedure reason" """The coded reason why the procedure was performed. This may be a coded entity or may simply be present as text."""
* significantProcedures.outcome 0..1 CodeableConcept "A.2.7.2.6 - Outcome" """The outcome of the procedure - did it resolve the reasons for the procedure being performed?"""
* significantProcedures.complication 0..* CodeableConcept "A.2.7.2.7 - Complication" """Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues."""
* significantProcedures.focalDevice 0..* CodeableReference "A.2.7.2.8 - Focal device" """A reference to the device or devices that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure."""
* medicalDevices 1..* BackboneElement "A.2.7.3 - Medical devices and implants" """Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment). Also medical devices explanted, or its use was stopped during hospitalisation. If the section is blank, the reason must be explicitly stated using the IPS Absent and Unknown Data coding system"""
* medicalDevices.description 1..1 CodeableConcept "A.2.7.3.1 - Device and implant description" """Describes the patient's implanted and external medical devices and equipment upon which their health status depends. Includes devices such as cardiac pacemakers, implantable fibrillator, prosthesis, ferromagnetic bone implants, etc. of which the HP needs to be aware."""
* medicalDevices.identifier 0..1 Identifier "A.2.7.3.2 - Device ID" """Normalised identifier of the device instance such as UDI according to REGULATION (EU) 2017/745"""
* medicalDevices.implantDate 1..1 dateTime "A.2.7.3.3 - Implant date" """The date and time the device was implanted or when its use began."""
* medicalDevices.endDate 0..1 dateTime "A.2.7.3.4 - End date" """Date and time when the device was explanted from the patient or the external device was no longer in use; likewise when the device is planned to be explanted"""
* medicalDevices.reason 0..* CodeableConcept "A.2.7.3.5 - Reason" """The medical reason for use of the medical device."""
* pharmacotherapy 0..* BackboneElement "A.2.7.5 - Pharmacotherapy" """Selected drug treatment during hospitalisation. Medicinal products that were administered during hospitalisation and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine, corticosteroids in high doses, etc.) will be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section.Medicinal products, the administration of which was started during hospitalisation, but is also recommended after discharge, will be listed in the summary table in the recommendation section."""
* pharmacotherapy.reason 0..1 CodeableConcept "A.2.7.5.1 - Medication reason" """The reason why the medication is or was prescribed or used. It provides a link to the Past or current health conditions or problems that the patient has had or has."""
* pharmacotherapy.productCode 1..1 CodeableConcept "A.2.7.5.2 - Code" """Product code"""
* pharmacotherapy.intendedUse 0..* CodeableConcept "A.2.7.5.3 - Intended use" """Indication intended use as: prevention or treatment Example: prophylaxis, treatment, diagnostic, anaesthesia."""
* pharmacotherapy.productName 1..1 string "A.2.7.5.4 - Brand name" """Brand name if biological medicinal product or when justified by the health professional (ref. Commission Directive 2012/52/EU)"""
* pharmacotherapy.activeIngredient 0..* CodeableConcept "A.2.7.5.5 - Active ingredient list" """Substance that alone or in combination with one or more other ingredients produces the intended activity of a medicinal product. Example: \"paracetamol\" """
* pharmacotherapy.strength 0..* Ratio "A.2.7.5.6 - Strength" """The content of the active ingredient expressed quantifiably per dosage unit, per unit of volume or per unit of weight, according to the pharmaceutical dose form. Example: 500 mg per tablet"""
* pharmacotherapy.doseForm 0..1 CodeableConcept "A.2.7.5.7 - Pharmaceutical dose form" """The form in which a pharmaceutical product is presented in the medicinal product package (e.g. tablet, syrup)"""
* pharmacotherapy.dosageRegimen 0..* BackboneElement "A.2.7.5.8 - Dosage Regimen" """Number of units per intake and frequency of intake over a specified duration of time. Example: 1 tablet every 24h, for 10 days"""
* pharmacotherapy.route 0..1 CodeableConcept "A.2.7.5.9 - Route of administration" """Path by which the pharmaceutical product is taken into or makes contact with the body. """
* pharmacotherapy.period 0..1 Period "A.2.7.5.10 - Period of treatment" """The time interval when the patient was, or was not, given the medication."""
* significantResults 0..* BackboneElement "A.2.7.6 - Significant Observation Results" """Results of significant functional, diagnostic, and imaging examinations to ensure continuity of care, performed during hospitalisation. Results of examinations ordered but not yet delivered should be presented separately from results already delivered."""
* significantResults.date 1..1 dateTime "A.2.7.6.1 - Date" """Date and time of the observation"""
* significantResults.status 1..1 CodeableConcept "A.2.7.6.2 - Observation status" """Status of the observation (e.g. registered, preliminary, final)"""
* significantResults.description 0..1 string "A.2.7.6.3 - Result description" """Narrative representation of the observation result and findings."""
* significantResults.details 1..1 BackboneElement "A.2.7.6.4 - Observation details" """Observation details include code that identifies observation, specification of the observed body structure or specimen, date and time of the specimen collection, observation method or protocol used and other aspects of the observation."""
* significantResults.result 0..1 BackboneElement "A.2.7.6.5 - Observation result" """Result of the observation including numeric and coded results of the measurement, details about how the tests were done to get the result values, information about reference ranges and result interpretation. Content of the observation result will vary according to the type of the observation."""
* significantResults.reporter 0..* BackboneElement "A.2.7.6.7 - Reporter" """With certain observation results, e.g. there may also be an interpreter or a person responsible for validation."""
* synthesis 1..1 BackboneElement "A.2.7.7 - Synthesis" """This section provides clinical synthesis (e.g. description of reasons and course of hospital stay) clustered by managed conditions, Clinical synthesis may include clinical reasoning (differential diagnostics, explanation of clinical context) in clinically complex conditions."""
* synthesis.description 1..* string "A.2.7.7.1 - Problem synthesis" """Summary description of the reason and course of hospitalisation for a specific problem."""
* synthesis.reasoning 0..1 string "A.2.7.7.2 - Clinical reasoning" """The clinical summary can be concluded with a clinical consideration (diff. diagnosis, explanation of context, etc.) for clinically complex conditions."""



//--------------------------------------------------------------------------------
//  Comments - Preferred Code systems
//--------------------------------------------------------------------------------

* diagnosticSummary.problemDetails ^comment = """ICD-10*
SNOMED CT
ICD-O-3
Orphacode if rare disease is diagnosed IPS Absent and Unknown Data"""
* diagnosticSummary.category ^comment = """- Present on admission [POA])
- Hospital acquired condition [HAC]
- Not applicable or unknown"""
* diagnosticSummary.treatmentClass ^comment = """Treated, Other"""
* diagnosticSummary.clinicalStatus ^comment = """hl7:condition-clinical"""
* diagnosticSummary.severity ^comment = """hl7:condition-severity"""
* diagnosticSummary.stage ^comment = """e.g. TNM
ICD-O-3"""

* significantProcedures.procedureCode ^comment = """SNOMED CT
IPS Absent and Unknown Data"""
* significantProcedures.bodySite ^comment = """SNOMED CT"""
* significantProcedures.reason ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed"""
* significantProcedures.outcome ^comment = """SNOMED CT"""
* significantProcedures.complication ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed"""

* medicalDevices.description ^comment = """SNOMED CT
EMDN
IPS Absent and Unknown Data"""
* medicalDevices.reason ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed"""

* pharmacotherapy.reason ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed"""
* pharmacotherapy.productCode ^comment = """IDMP"""
* pharmacotherapy.activeIngredient ^comment = """ATC
(IDMP / EMA SPOR SMS)"""
* pharmacotherapy.strength ^comment = """UCUM
EDQM Standard terms"""
* pharmacotherapy.doseForm ^comment = """EDQM Standard Terms"""
* pharmacotherapy.route ^comment = """EDQM Standard Terms"""

* significantResults.status ^comment = """hl7:observation-status"""
* significantResults.details ^comment = """LOINC
NPU
SNOMED CT"""
* significantResults.result ^comment = """SNOMED CT
UCUM (measurement units)"""