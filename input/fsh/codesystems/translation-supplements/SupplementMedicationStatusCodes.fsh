CodeSystem: SupplementMedicationStatusCodes
Id: medication-status-codes-supplement
Title: "Supplement Medication Status Codes"
Description: "CodeSystem Supplement mit Deutschen Übersetzungen für Medication Status Codes"
* insert Meta
* ^content = #supplement
* ^supplements = "http://hl7.org/fhir/CodeSystem/medication-statement-status"
* #active
* #active ^designation.language = #de-DE
* #active ^designation.value = "Aktiv"
* #completed
* #completed ^designation.language = #de-DE
* #completed ^designation.value = "Abgeschlossen"
* #entered-in-error
* #entered-in-error ^designation.language = #de-DE
* #entered-in-error ^designation.value = "Irrtürmliche Eingabe"
* #intended
* #intended ^designation.language = #de-DE
* #intended ^designation.value = "Beabsichtigt"
* #stopped
* #stopped ^designation.language = #de-DE
* #stopped ^designation.value = "Gestoppt"
* #on-hold
* #on-hold ^designation.language = #de-DE
* #on-hold ^designation.value = "Suspendiert"
* #unknown
* #unknown ^designation.language = #de-DE
* #unknown ^designation.value = "Unbekannt"
* #not-taken
* #not-taken ^designation.language = #de-DE
* #not-taken ^designation.value = "Nicht eingenommen"