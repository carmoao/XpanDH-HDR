//===================================================
//  Logical Model	xph-hdr-medical-history.fsh
//===================================================
Logical: HdrEHNPatientHistory
Id: HDRPatientHistory
Title: "A.2.6 - Patient history (eHN)"
Description:  """Hospital Discharge Report - Patient history - A.2.6 eHN
Maturity Level: 0 Draft"""

* medicalHistory 1..1 BackboneElement "A.2.6.1 - Medical history" """Medical history"""
* medicalHistory.historyOfConditions 1..* BackboneElement "A.2.6.1.1 - History of problems" """A list of conditions of a patient that the patient suffered in the past or still suffers. Unlike diagnostic summary, medical history is not only a list of problems, but could contain broader description of the condition and its progress, details about treatment including medication and patient response to treatment. Past problem section (unlike the same section of the patient summary) should include only conditions that are important for continuity of care. This section, if provided, complements the diagnostic summary section of the discharge report. """
* medicalHistory.historyOfConditions.conditionSpecification 1..1 string "A.2.6.1.1.1 - Problem description" """Problem specification"""
* medicalHistory.historyOfConditions.conditionDetails 0..* BackboneElement "A.2.6.1.1.2 - Problem details" """Problem details include code that identifies problem, specification of the body structure, laterality, and other aspects of the problem."""
* medicalHistory.historyOfConditions.onsetDate 1..1 dateTime "A.2.6.1.1.3 - Onset date" """Onset date of the problem/condition"""
* medicalHistory.historyOfConditions.endDate 0..1 dateTime "A.2.6.1.1.4 - End date" """The date or estimated date that the condition resolved or went into remission."""
* medicalHistory.historyOfConditions.clinicalStatus 0..1 CodeableConcept "A.2.6.1.1.5 - Clinical status" """Status of the condition/problem (active, resolved, inactive, ...)"""
* medicalHistory.historyOfConditions.resolution 0..1 BackboneElement "A.2.6.1.1.6 - Resolution circumstances" """Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.). This field includes "free text" if the resolution circumstances are not already included in other fields such as surgical procedure, medical device, etc., e.g. hepatic cystectomy (this will be the resolution circumstances for the problem "hepatic cyst" and will be included in surgical procedures)."""
* medicalHistory.historyOfConditions.severity 0..1 CodeableConcept "A.2.6.1.1.7 - Severity" """A subjective assessment of the severity of the condition as evaluated by the clinician."""
* medicalHistory.historyOfConditions.stage 0..* CodeableConcept "A.2.6.1.1.8 - Stage" """Stage/grade, usually assessed formally using a specific staging/grading system."""
* medicalHistory.medicalDevices 1..* BackboneElement "A.2.6.1.2 - Devices and Implants" """Devices and Implants"""
* medicalHistory.medicalDevices.description 1..1 CodeableConcept "A.2.6.1.2.1 - Device and implant description" """Describes the patient's implanted and external medical devices and equipment upon which their health status depends. Includes devices such as cardiac pacemakers, implantable fibrillator, prosthesis, ferromagnetic bone implants, etc. of which the HP needs to be aware."""
* medicalHistory.medicalDevices.identifier 0..1 Identifier "A.2.6.1.2.2 - Device ID" """Normalised identifier of the device instance such as UDI according to REGULATION (EU) 2017/745"""
* medicalHistory.medicalDevices.implantDate 1..1 dateTime "A.2.6.1.2.3 - Implant date" """The date and time the device was implanted or when its use began."""
* medicalHistory.medicalDevices.endDate 0..1 dateTime "A.2.6.1.2.4 - End date" """Date and time when the device was explanted from the patient or the external device was no longer in use; likewise when the device is planned to be explanted"""
* medicalHistory.medicalDevices.reason 0..* CodeableConcept "A.2.6.1.2.5 - Reason" """The medical reason for use of the medical device."""
* medicalHistory.historyOfProcedures 0..* BackboneElement "A.2.6.1.3 - History of procedures" """Historical procedures performed on or for a patient, relevant for the current encounter."""
* medicalHistory.historyOfProcedures.procedureCode 0..1 CodeableConcept "A.2.6.1.3.1 - Procedure code" """Procedure code"""
* medicalHistory.historyOfProcedures.description 1..1 string "A.2.6.1.3.2 - Procedure description" """Narrative description of the procedure"""
* medicalHistory.historyOfProcedures.bodySite 0..1 CodeableConcept "A.2.6.1.3.3 - Body site" """Procedure target body site and laterality"""
* medicalHistory.historyOfProcedures.date 0..1 dateTime "A.2.6.1.3.4 - Procedure date" """Date and time when procedure was performed"""
* medicalHistory.historyOfProcedures.reason 0..1 CodeableConcept "A.2.6.1.3.5 - Procedure reason" """The coded reason why the procedure was performed. This may be a coded entity or may simply be present as text."""
* medicalHistory.historyOfProcedures.outcome 0..1 CodeableConcept "A.2.6.1.3.6 - Outcome" """The outcome of the procedure - did it resolve the reasons for the procedure being performed? Applicable mainly on surgical procedures."""
* medicalHistory.historyOfProcedures.focalDevice 0..* CodeableReference "A.2.6.1.3.7 - Focal device" """A reference to the device or devices that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure. """
* medicalHistory.vaccination 0..* BackboneElement "A.2.6.1.4 - Vaccination" """Vaccination history of the patient."""
* medicalHistory.vaccination.diseaseOrAgent 0..* CodeableConcept "A.2.6.1.4.1 - Disease or agent targeted" """Disease or agent that the vaccination provides protection against"""
* medicalHistory.vaccination.vaccine 1..1 CodeableConcept "A.2.6.1.4.2 - Vaccine/prophylaxis" """Generic description of the vaccine/prophylaxis or its component(s)"""
* medicalHistory.vaccination.productName 0..1 string "A.2.6.1.4.4 - Vaccine medicinal product" """Medicinal product name """
* medicalHistory.vaccination.manufacturerOrMAH 0..1 BackboneElement "A.2.6.1.4.5 - Marketing Authorisation Holder " """Marketing Authorisation Holder or manufacturer (Identifier and name)"""
* medicalHistory.vaccination.orderNumber 0..1 integer "A.2.6.1.4.6 - Number in a series of vaccinations / doses" """Order in the vaccination course."""
* medicalHistory.vaccination.vaccinationDate 1..1 dateTime "A.2.6.1.4.7 - Date of vaccination" """The date and time when the vaccination was administered"""
* medicalHistory.vaccination.nextVaccinationDate 0..1 dateTime "A.2.6.1.4.8 - Next vaccination date" """The date when the vaccination is planned to be given/repeated (e.g. next dose)"""
* medicalHistory.epidemiologicalHistory 0..1 BackboneElement "A.2.6.1.5 - Epidemiological history" """Travel history and infectious contacts"""
* medicalHistory.epidemiologicalHistory.infectiousContacts 0..* BackboneElement "A.2.6.1.5.1 - Infectious contacts" """Infectious contacts of the patient"""
* medicalHistory.epidemiologicalHistory.infectiousContacts.period 0..1 Period "A.2.6.1.5.1.1 - Time period" """A date and duration or date time interval of contact. Partial dates are allowed."""
* medicalHistory.epidemiologicalHistory.infectiousContacts.infectiousAgent 0..* CodeableConcept "A.2.6.1.5.1.2 - Infectious agent" """Information about a suspected infectious agent or agents the person was exposed to."""
* medicalHistory.epidemiologicalHistory.infectiousContacts.proximity 0..1 CodeableConcept "A.2.6.1.5.1.3 - Proximity" """Proximity to the source/carrier of the infectious agent during exposure. Proximity could be expressed by text, code (direct, indirect) or value specifying distance from the InfectiousAgentCarrier."""
* medicalHistory.epidemiologicalHistory.infectiousContacts.country 0..1 CodeableConcept "A.2.6.1.5.1.4 - Country" """Country in which the person was potentially exposed to an infectious agent."""
* medicalHistory.epidemiologicalHistory.infectiousContacts.note 0..1 string "A.2.6.1.5.1.5 - Additional information" """A textual note with additional information about infectious contact."""
* medicalHistory.epidemiologicalHistory.travelHistory 0..* BackboneElement "A.2.6.1.5.2 - Travel history" """Travel history reported by the patient. Multiple records could be provided."""
* medicalHistory.epidemiologicalHistory.travelHistory.period 0..1 Period "A.2.6.1.5.2.1 - Time period" """Start and end date or end date and duration of stay in a country. Partial dates are allowed."""
* medicalHistory.epidemiologicalHistory.travelHistory.country 1..1 CodeableConcept "A.2.6.1.5.2.2 - Country visited" """A country visited by the patient."""
* medicalHistory.epidemiologicalHistory.travelHistory.comment 0..1 string "A.2.6.1.5.2.3 - Comment" """Relevant notes on the travel stay."""
* familyHistory 0..* BackboneElement "A.2.6.2 - Family history" """Information about serious illnesses in close blood relatives with known or suspected genetic potential or with possible impact on patient care."""
* familyHistory.relationship 0..1 CodeableConcept "A.2.6.2.1 - Patient relationship" """The family relation between the related person and the patient."""
* familyHistory.birthDate 0..1 dateTime "A.2.6.2.2 - Date of birth" """Full or partial date of birth"""
* familyHistory.deathDateOrAge 0..1 BackboneElement "A.2.6.2.3 - Age or date of death" """Age or date of the death of the family member."""
* familyHistory.conditions 0..* BackboneElement "A.2.6.2.5 - Condition" """Medical problems this person suffers or suffered."""
* familyHistory.causeOfDeath 0..1 CodeableConcept "A.2.6.2.6 - Cause of death" """Information about disease or condition that was the main cause of death."""
* socialDeterminants 0..1 BackboneElement "A.2.6.3 - Social determinants of health" """Information about social determinants of health. """
* socialDeterminants.participationInSociety 0..1 BackboneElement "A.2.6.3.1 - Participation in society" """Participation in society details."""
* socialDeterminants.participationInSociety.workSituation 0..1 string "A.2.6.3.1.1 - Work situation" """Work Situation describes the extent to which and in what way the patient participates in the workforce. Work is meant in the broadest sense of the word: activities that contribute to the person themselves, their environment or society. This includes both paid and unpaid work."""
* socialDeterminants.participationInSociety.hobby 0..1 string "A.2.6.3.1.2 - Hobby" """An activity the patient enjoys doing in their free time."""
* socialDeterminants.participationInSociety.socailNetwork 0..1 string "A.2.6.3.1.3 - Social network" """A description of the patient’s social network, such as family, neighbours and friends."""
* socialDeterminants.education 0..1 BackboneElement "A.2.6.3.2 - Education" """Education"""
* socialDeterminants.education.level 0..1 CodeableConcept "A.2.6.3.2.1 - Education level" """Indication of the highest level of education achieved."""
* socialDeterminants.education.comment 0..1 string "A.2.6.3.2.2 - Comment" """If deemed relevant, a specification of the degree program can be provided by means of an explanation (e.g.: patient is in medical school)."""
* socialDeterminants.livingSituation 0..1 BackboneElement "A.2.6.3.3 - Living situation" """Household type and other related living situation information."""
* socialDeterminants.livingSituation.houseType 0..1 CodeableConcept "A.2.6.3.3.1 - House type" """Type of home the patient lives in."""
* socialDeterminants.livingSituation.homeAdaption 0..* CodeableConcept "A.2.6.3.3.2 - Home adaption" """Adaptions present in the home that have been made in the context of the illness or disability to make the functioning of the patient safer and more comfortable and to enable independent living. Multiple data elements could be provided."""
* socialDeterminants.livingSituation.livingConditions 0..* CodeableConcept "A.2.6.3.3.3 - Living conditions" """Conditions that affect the accessibility of the home or the stay in the home. Multiple data elements could be provided."""
* socialDeterminants.familySituation 0..1 BackboneElement "A.2.6.3.4 - Family situation" """Family situation details."""
* socialDeterminants.familySituation.comment 0..1 string "A.2.6.3.4.1 - Comment" """A comment on the family situation."""
* socialDeterminants.familySituation.familyComposition 0..1 CodeableConcept "A.2.6.3.4.2 - Family composition" """The family composition describes the patient’s home situation and the form of cohabitation.  """
* socialDeterminants.familySituation.maritalStatus 0..1 CodeableConcept "A.2.6.3.4.3 - Marital status" """A person’s marital status according to the terms and definition in the national civil code."""
* socialDeterminants.familySituation.numberOfChildren 0..1 integer "A.2.6.3.4.4 - Number of children" """The number of children the patient has. Children in the context of this information model include step children, foster children, biological and adopted children."""
* socialDeterminants.familySituation.numberOfChildrenAtHome 0..1 integer "A.2.6.3.4.5 - Number of children at home" """The number of children living at home with the patient."""
* socialDeterminants.familySituation.childDetails 0..* BackboneElement "A.2.6.3.4.6 - Child details" """Child age, co-living status and comment. Multiple child details could be provided."""
* socialDeterminants.familySituation.careResponsibility 0..* BackboneElement "A.2.6.3.4.7 - Care responsibility" """The activities the patient carries out to care for a dependent family member."""
* useOfSubstances 0..1 BackboneElement "A.2.6.4 - Use of substances" """Use of substances"""
* useOfSubstances.alcohol 0..* BackboneElement "A.2.6.4.1 - Alcohol use" """Alcohol consumption by the patient. Multiple records on alcohol use could be provided."""
* useOfSubstances.alcohol.currentStatus 0..1 CodeableConcept "A.2.6.4.1.1 - Status" """The status of the patient’s alcohol use."""
* useOfSubstances.alcohol.periodAndQuantity 0..* CodeableConcept "A.2.6.4.1.2 - Period and quantity" """Period of use and amount (The extent of the patient’s alcohol use in units of alcohol per time period.)"""
* useOfSubstances.alcohol.comment 0..1 string "A.2.6.4.1.3 - Comment" """Textual comment."""
* useOfSubstances.tobacco 0..* BackboneElement "A.2.6.4.2 - Tobacco use" """Represent smoking or tobacco habits. Multiple records on tobacco use could be provided."""
* useOfSubstances.tobacco.currentStatus 0..1 CodeableConcept "A.2.6.4.2.1 - Status" """The status of the patient’s tobacco use."""
* useOfSubstances.tobacco.periodAndQuantity 0..* BackboneElement "A.2.6.4.2.2 - Period and quantity" """Period of use and amount (The extent of the patient’s tobacco use in units of alcohol per time period.)"""
* useOfSubstances.tobacco.comment 0..1 string "A.2.6.4.2.3 - Comment" """Textual comment."""
* useOfSubstances.drugConsumption 0..* BackboneElement "A.2.6.4.3 - Drug consumption" """Consumption of drugs and other substances (in terms of abuse)."""
* useOfSubstances.drugConsumption.currentStatus 0..1 CodeableConcept "A.2.6.4.3.1 - Status" """The status of the patient’s drug use."""
* useOfSubstances.drugConsumption.periodAndQuantity 0..1 BackboneElement "A.2.6.4.3.2 - Period and quantity" """Period of use and amount."""
* useOfSubstances.drugConsumption.drugType 0..1 CodeableConcept "A.2.6.4.3.3 - Drug or medication type" """Type of the drug consumption"""
* useOfSubstances.drugConsumption.route 0..* CodeableConcept "A.2.6.4.3.4 - Route of administration" """Route or routes of administration """
* useOfSubstances.drugConsumption.comment 0..1 string "A.2.6.4.3.5 - Comment" """Textual comment"""



// ------------------------------------------
// Comments
// ------------------------------------------
* medicalHistory.historyOfConditions.conditionDetails ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed
IPS Absent and Unknown Data
ICD-O-3"""
* medicalHistory.historyOfConditions.clinicalStatus ^comment = """hl7:condition-clinical"""
* medicalHistory.historyOfConditions.severity ^comment = """SNOMED CT"""
* medicalHistory.historyOfConditions.stage ^comment = """e.g. TNM
ICD-O-3 """
* medicalHistory.medicalDevices.description ^comment = """SNOMED CT
EMDN
IPS Absent and Unknown Data"""
* medicalHistory.medicalDevices.reason ^comment = """ICD-10
SNOMED CT
Orphacode if rare disease is diagnosed"""
* medicalHistory.historyOfProcedures.procedureCode ^comment = """SNOMED CT
LOINC, NPU (for laboratory procedures)
IPS Absent and Unknown Data"""
* medicalHistory.historyOfProcedures.date ^comment = """SNOMED CT"""
* medicalHistory.historyOfProcedures. ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed"""
* medicalHistory.historyOfProcedures.outcome ^comment = """SNOMED CT"""
* medicalHistory.vaccination.diseaseOrAgent ^comment = """ICD-10*
SNOMED CT"""
* medicalHistory.vaccination.vaccine ^comment = """SNOMED CT
ATC (IDMP/ EMA SPOR SMS)"""

* medicalHistory.vaccination.manufacturerOrMAH ^comment = """EMA's Organisations Management Service (EMA SPOR OMS)"""
* medicalHistory.epidemiologicalHistory.infectiousContacts.infectiousAgent ^comment = """ICD-10* (chapter 1)
SNOMED CT"""
* medicalHistory.epidemiologicalHistory.infectiousContacts.proximity ^comment = """SNOMED CT
UCUM (measurement units)"""
* medicalHistory.epidemiologicalHistory.infectiousContacts.country ^comment = """ISO 3166"""
* medicalHistory.epidemiologicalHistory.travelHistory.country ^comment = """ISO 3166"""

* familyHistory.relationship ^comment = """hl7:v3-RoleCode"""

* familyHistory.deathDateOrAge ^comment = """Age or date of death"""
* familyHistory.conditions ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed"""
* familyHistory.causeOfDeath ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed"""

* socialDeterminants.education.level ^comment = """hl7:v3.EducationLevel"""
* socialDeterminants.livingSituation.houseType ^comment = """SNOMED CT"""
* socialDeterminants.livingSituation.homeAdaption ^comment = """SNOMED CT"""
* socialDeterminants.livingSituation.livingConditions ^comment = """SNOMED CT"""
* socialDeterminants.familySituation.familyComposition ^comment = """SNOMED CT"""
* socialDeterminants.familySituation.maritalStatus ^comment = """hl7: v3-MaritalStatus"""

* useOfSubstances.alcohol.currentStatus ^comment = """SNOMED CT"""
* useOfSubstances.tobacco.currentStatus ^comment = """SNOMED CT"""
* useOfSubstances.drugConsumption.currentStatus ^comment = """SNOMED CT"""
* useOfSubstances.drugConsumption.drugType ^comment = """SNOMED CT"""
* useOfSubstances.drugConsumption.route ^comment = """EDQM Standard Terms"""
