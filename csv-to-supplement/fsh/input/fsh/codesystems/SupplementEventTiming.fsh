CodeSystem: SupplementEventTiming
Id: eventtiming-supplement
Title: "Supplement EventTiming"
Description: "CodeSystem Supplement mit Deutschen Übersetzungen für EventTiming"
* ^content = #supplement

* ^supplements = "http://hl7.org/fhir/event-timing"
* ^version = "0.1.0"
* #MORN
* #MORN ^designation.language = #de-DE
* #MORN ^designation.value = "Morgens"
* #MORN.early
* #MORN.early ^designation.language = #de-DE
* #MORN.early ^designation.value = "Früher Morgen"
* #MORN.late
* #MORN.late ^designation.language = #de-DE
* #MORN.late ^designation.value = "Später Vormittag"
* #NOON
* #NOON ^designation.language = #de-DE
* #NOON ^designation.value = "Mittags"
* #AFT
* #AFT ^designation.language = #de-DE
* #AFT ^designation.value = "Nachmittag"
* #AFT.early
* #AFT.early ^designation.language = #de-DE
* #AFT.early ^designation.value = "Früher Nachmittag"
* #AFT.late
* #AFT.late ^designation.language = #de-DE
* #AFT.late ^designation.value = "Später Nachmittag"
* #EVE
* #EVE ^designation.language = #de-DE
* #EVE ^designation.value = "Abends"
* #EVE.early
* #EVE.early ^designation.language = #de-DE
* #EVE.early ^designation.value = "Früher Abend"
* #EVE.late
* #EVE.late ^designation.language = #de-DE
* #EVE.late ^designation.value = "Später Abend"
* #NIGHT
* #NIGHT ^designation.language = #de-DE
* #NIGHT ^designation.value = "Nachts"
* #PHS
* #PHS ^designation.language = #de-DE
* #PHS ^designation.value = "Nach dem Schlaf"