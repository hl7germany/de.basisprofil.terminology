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
* #routine ^designation.language = #de-DE
* #routine ^designation.value = "Routine"
* #urgent
* #urgent ^designation.language = #de-DE
* #urgent ^designation.value = "Dringend"
* #asap
* #asap ^designation.language = #de-DE
* #asap ^designation.value = "Baldmöglichst"
* #stat
* #stat ^designation.language = #de-DE
* #stat ^designation.value = "Sofort/Notfall"