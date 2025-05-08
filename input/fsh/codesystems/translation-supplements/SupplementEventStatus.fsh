CodeSystem: SupplementEventStatus
Id: eventstatus-supplement
Title: "Supplement EventStatus"
Description: "CodeSystem Supplement mit Deutschen Übersetzungen für EventStatus"
* insert Meta
* ^content = #supplement
* ^supplements = "http://hl7.org/fhir/event-status"
* #preparation
* #preparation ^designation.language = #de-DE
* #preparation ^designation.value = "In Vorbereitung"
* #in-progress
* #in-progress ^designation.language = #de-DE
* #in-progress ^designation.value = "Im Gange"
* #not-done
* #not-done ^designation.language = #de-DE
* #not-done ^designation.value = "Nicht durchgeführt"
* #on-hold
* #on-hold ^designation.language = #de-DE
* #on-hold ^designation.value = "Suspendiert"
* #stopped
* #stopped ^designation.language = #de-DE
* #stopped ^designation.value = "Gestoppt"
* #completed
* #completed ^designation.language = #de-DE
* #completed ^designation.value = "Erledigt"
* #entered-in-error
* #entered-in-error ^designation.language = #de-DE
* #entered-in-error ^designation.value = "Irrtümliche Eingabe"
* #unknown
* #unknown ^designation.language = #de-DE
* #unknown ^designation.value = "Unbekannt"