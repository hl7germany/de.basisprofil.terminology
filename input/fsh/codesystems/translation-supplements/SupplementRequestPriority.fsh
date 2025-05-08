CodeSystem: SupplementRequestPriority
Id: requestpriority-supplement
Title: "Supplement RequestPriority"
Description: "CodeSystem Supplement mit Deutschen Übersetzungen für RequestPriority"
* ^content = #supplement
* ^date = "2022-02-09"
* ^experimental = true
* ^publisher = "HL7 Deutschland e.V. (Technisches Komitee FHIR)"
* ^status = #draft
* ^supplements = "http://hl7.org/fhir/request-priority"
* ^version = "0.1.0"
* #routine
  * ^designation.language = #de-DE
  * ^designation.value = "Routine"
* #urgent
  * ^designation.language = #de-DE
  * ^designation.value = "Dringend"
* #asap
  * ^designation.language = #de-DE
  * ^designation.value = "Baldmöglichst"
* #stat
  * ^designation.language = #de-DE
  * ^designation.value = "Sofort"