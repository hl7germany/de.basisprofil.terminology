Alias: $version = 0.0.1-alpha1

RuleSet: MetaNoVersion
* ^status = #active
* ^experimental = true
* ^date = 2025-05-08
* ^publisher = "HL7 Deutschland e.V. (Technisches Komitee Terminologie)"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://hl7.de/technische-komitees/terminologien/"

RuleSet: Meta
* insert MetaNoVersion
* ^version = $version

RuleSet: Meta-Instance
* status = #active
* version = $version
* experimental = true
* date = 2025-05-08
* publisher = "HL7 Deutschland e.V. (Technisches Komitee Terminologie)"
* contact.telecom.system = #url
* contact.telecom.value = "https://hl7.de/technische-komitees/terminologien/"

RuleSet: SnomedDisclaimer
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002 International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

RuleSet: UCUMDisclaimer
* ^copyright = "The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright © 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved."

RuleSet: LOINCDisclaimer
* ^copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use."