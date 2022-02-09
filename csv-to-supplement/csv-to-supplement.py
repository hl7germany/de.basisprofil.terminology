import os
import json
import pandas as pd
import fhirclient.models.fhirdate as fd
from fhirclient.models import codesystem as cs

data = pd.read_csv(os.path.join(os.path.dirname(__file__), 'FHIR_VS_Uebersetzungen.csv'), dtype=str, encoding='UTF-8', sep=";", keep_default_na=False)
data['Name'] = data['Name'].str.strip()
data['Code'] = data['Code'].str.strip()
data['vorläufige Übersetzung'] = data['vorläufige Übersetzung'].str.strip()

idx_list = data.Name[data.Name != ''].index.tolist()
idx_list_full = idx_list + [len(data.index)]

concepts = []
for index, row in data.iterrows():
    concept = cs.CodeSystemConcept()
    concept.code = row[3]
    desi = cs.CodeSystemConceptDesignation()
    desi.language = 'de-DE'
    desi.value = row[5]
    concept.designation = [desi]
    concepts.append(concept)

for index, row in data.iterrows():
    for elem,next_elem in zip(idx_list_full, idx_list_full[1:]+[idx_list_full[0]]):
        if index == elem and index != idx_list_full[-1]:
            codesystem = cs.CodeSystem()
            codesystem.id = str(data.iloc[elem, 0]).lower().replace('/', '-').replace(' ', '-') + '-supplement'
            codesystem.url = 'http://fhir.de/CodeSystem/' + str(data.iloc[elem, 0]).lower().replace('/', '-').replace(' ', '-') + '-supplement'
            codesystem.version = '0.1.0'
            codesystem.status = 'draft'
            codesystem.publisher = 'HL7 Deutschland e.V. (Technisches Komitee FHIR)'
            codesystem.name = 'Supplement' + str(data.iloc[elem, 0]).replace('/', '').replace(' ', '').replace('.', '')
            codesystem.title = 'Supplement ' + str(data.iloc[elem, 0])
            codesystem.experimental = True
            codesystem.description = 'CodeSystem Supplement mit Deutschen Übersetzungen für ' + str(data.iloc[elem, 0])
            codesystem.date = fd.FHIRDate('2022-02-09')
            codesystem.content = 'supplement'
            codesystem.supplements = str(data.iloc[elem, 2])
            codesystem.concept = [concepts[idx] for idx in range(elem,next_elem)]

            fname = os.path.join(os.path.dirname(__file__), 'output/CodeSystemSupplement-' + (data.iloc[elem, 0]).replace('/', '-') + '.json')
            with open(fname, 'w') as outfile:
                json.dump(codesystem.as_json(), outfile, indent=4, ensure_ascii=False)
            print(f"CodeSystem json written to file {fname}")