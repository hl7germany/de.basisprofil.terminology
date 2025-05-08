CodeSystem: SupplementRequestStatus
Id: requeststatus-supplement
Title: "Supplement RequestStatus"
Description: "CodeSystem Supplement mit Deutschen Übersetzungen für RequestStatus"
* ^content = #supplement
* ^date = "2022-02-09"
* ^experimental = true
* ^publisher = "HL7 Deutschland e.V. (Technisches Komitee FHIR)"
* ^status = #draft
* ^supplements = "http://hl7.org/fhir/request-status"
* ^version = "0.1.0"
* #draft
  * ^designation.language = #de-DE
  * ^designation.value = "Entwurf"
* #active
  * ^designation.language = #de-DE
  * ^designation.value = "Aktiv"
* #on-hold
  * ^designation.language = #de-DE
  * ^designation.value = "Pausiert"
* #revoked
  * ^designation.language = #de-DE
  * ^designation.value = "Widerrufen"
* #completed
  * ^designation.language = #de-DE
  * ^designation.value = "Abgeschlossen"
* #entered-in-error
  * ^designation.language = #de-DE
  * ^designation.value = "Irrtürmliche Eingabe"
* #unknown
  * ^designation.language = #de-DE
  * ^designation.value = "Unbekannt"