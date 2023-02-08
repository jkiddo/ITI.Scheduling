Instance: IHE.Scheduling.client
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://profiles.ihe.net/ITI/Scheduling/CapabilityStatement/IHE.Scheduling.client"
* version = "0.1.0"
* name = "IHE_Scheduling_client"
* title = "IHE Scheduling client"
* status = #active
* experimental = false
* date = "2023-01-13"
* publisher = "Integrating the Healthcare Enterprise (IHE)"
* contact[0].name = "IHE"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://ihe.net"
* contact[+].name = "John Moehrke"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "JohnMoehrke@gmail.com"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* description = "CapabilityStatement for Client Actor in the IHE IT Infrastructure Technical Framework Supplement IHE FHIR Scheduling. See https://profiles.ihe.net/ITI/TF/Volume1/ch-38.html. The IHE Profile text is Normative, this conformance resource is Informative."
* copyright = "IHE http://www.ihe.net/Governance/#Intellectual_Property"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHALL
* format[+] = #application/fhir+json
* format[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHOULD
* implementationGuide[0] = "http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch"
* implementationGuide[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHOULD
* implementationGuide[+] = "http://hl7.org/fhir/uv/ipa/ImplementationGuide/hl7.fhir.uv.ipa"
* implementationGuide[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHOULD
* rest.mode = #client
* rest.documentation = "IHE Scheduling client will 
1. query for Patient resources matching the IPA Patient resource query parameters, 
1. query for Appointment resources matching the IHE Scheduling Appointment resource query parameters,
1. use the operations defined for the Appointment resource"
* rest.security.cors = false
* rest.security.description = "None mandated by IHE, encouraged IHE-IUA or SMART-on-FHIR"
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "family"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "gender"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "birthdate"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "family"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "birthdate"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "name"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "gender"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "name"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #Patient
* rest.resource[=].profile = "http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-patient"
* rest.resource[=].profile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].profile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "Client applications SHALL be able to access the patient record using the following API call:\n\n`GET [url]/Patient/[id]`\n\nClient application MAY use these search parameters that servers are required to support to access the patient record:\n\n - `_id`\n - `identifier`\n\nServers are not required to support any additional search parameters, and clients SHOULD not expect servers to do so.\n\nAdditional rules and guidance for supporting `Patient.link`:\n\n- The server:\n    - SHALL have no more than one Patient with a status of active = \"true\" *from the server being queried* \n    - MAY include inactive patients on the *same server*\n    - MAY include inactive or active patients from a *different server*\n    - When returning a [search Bundle](http://hl7.org/fhir/bundle.html) that contains more than one Patient record for the same patient, the Patient record(s) SHALL use the `Patient.link` attribute to cross-link the Patient resources.\n- The client:\n    - SHALL be able to follow the link(s) to the other Patient resource(s) and understand the direction of the link (in other words, which Patient is linked to which other Patient)\n    - SHALL understand the `Patient.link.type` code which defines the type of link between this Patient resource and another Patient resource\n    - SHALL be aware of the linked Patient `active` flag and that inactive patients may have relevant information"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "birthdate"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-birthdate"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *day*. A server **SHALL** support a value precise to the *day*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "family"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "gender"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-gender"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values. The server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "given"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide both the system and code values. The server **SHALL NOT** support only code values."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.interaction.code = #search-system

Instance: IHE.Scheduling.server
InstanceOf: CapabilityStatement
Usage: #definition
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\nCapabilityStatement for SERVER Actor in the IHE\r\n<a href=\"https://profiles.ihe.net/ITI/TF/Volume1/ch-38.html\">Scheduling</a>.\r\nThe IHE Profile text is Normative, this conformance resource is Informative.</div>"
* url = "https://profiles.ihe.net/ITI/Scheduling/CapabilityStatement/IHE.Scheduling.server"
* name = "IHE_Scheduling_Server"
* title = "IHE Scheduling Server"
* status = #active
* experimental = false
* date = "2019-07-05"
* publisher = "Integrating the Healthcare Enterprise (IHE)"
* contact[0].name = "IHE"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://ihe.net"
* contact[+].name = "John Moehrke"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "JohnMoehrke@gmail.com"
* description = "CapabilityStatement for Server Actor in the IHE IT Infrastructure Technical Framework Supplement IHE FHIR Scheduling. See https://profiles.ihe.net/ITI/TF/Volume1/ch-38.html. The IHE Profile text is Normative, this conformance resource is Informative."
* copyright = "IHE http://www.ihe.net/Governance/#Intellectual_Property"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #server
* rest.documentation = "FooBar server provides capability to query for Patient resources matching a sub-set of the FHIR core Patient resource query parameters"
* rest.security.cors = false
* rest.security.description = "None mandated by IHE, encouraged IHE-IUA or SMART-on-FHIR"
* rest.resource.type = #Patient
* rest.resource.interaction[0].code = #read
* rest.resource.interaction[+].code = #search-type
* rest.resource.searchParam[0].name = "_id"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource.searchParam[=].type = #token
* rest.resource.searchParam[=].documentation = "Logical id of this artifact"
* rest.resource.searchParam[+].name = "active"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-active"
* rest.resource.searchParam[=].type = #token
* rest.resource.searchParam[=].documentation = "Whether the patient record is active"
* rest.resource.searchParam[+].name = "address-city"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-city"
* rest.resource.searchParam[=].type = #string
* rest.resource.searchParam[=].documentation = "A city specified in an address"
* rest.resource.searchParam[+].name = "address-country"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-country"
* rest.resource.searchParam[=].type = #string
* rest.resource.searchParam[=].documentation = "A country specified in an address"
* rest.resource.searchParam[+].name = "address-postalcode"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-postalcode"
* rest.resource.searchParam[=].type = #string
* rest.resource.searchParam[=].documentation = "A postalCode specified in an address"
* rest.resource.searchParam[+].name = "address-state"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address-state"
* rest.resource.searchParam[=].type = #string
* rest.resource.searchParam[=].documentation = "A state specified in an address"
* rest.resource.searchParam[+].name = "birthdate"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-birthdate"
* rest.resource.searchParam[=].type = #date
* rest.resource.searchParam[=].documentation = "The patient's date of birth"
* rest.resource.searchParam[+].name = "family"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource.searchParam[=].type = #string
* rest.resource.searchParam[=].documentation = "A portion of the family name of the patient"
* rest.resource.searchParam[+].name = "gender"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-gender"
* rest.resource.searchParam[=].type = #token
* rest.resource.searchParam[=].documentation = "Gender of the patient"
* rest.resource.searchParam[+].name = "given"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest.resource.searchParam[=].type = #string
* rest.resource.searchParam[=].documentation = "A portion of the given name of the patient"
* rest.resource.searchParam[+].name = "identifier"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
* rest.resource.searchParam[=].type = #token
* rest.resource.searchParam[=].documentation = "A patient identifier"
* rest.resource.searchParam[+].name = "telecom"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-telecom"
* rest.resource.searchParam[=].type = #token
* rest.resource.searchParam[=].documentation = "The value in any kind of telecom details of the patient"
* rest.resource.searchParam[+].name = "_lastUpdated"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource.searchParam[=].type = #date
* rest.resource.searchParam[=].documentation = "When the resource version last changed"
* rest.interaction.code = #search-system