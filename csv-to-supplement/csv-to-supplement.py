import os
import json
import pandas as pd
from fhirclient.models.fhirdatetime import FHIRDateTime
from fhirclient.models import codesystem as cs

# 1. CSV laden und Whitespace trimmen
data = pd.read_csv(
    os.path.join(os.path.dirname(__file__), 'FHIR_VS_Uebersetzungen.csv'),
    dtype=str,
    encoding='UTF-8',
    sep=';',
    keep_default_na=False
).apply(lambda s: s.str.strip() if s.dtype == 'object' else s)

# 2. Indizes für jeden neuen CodeSystem-Block
idx_list = data.index[data['Name'] != ''].tolist()
idx_list.append(len(data))

# 3. Für jeden Block ein eigenes CodeSystem erzeugen
for i in range(len(idx_list) - 1):
    start, end = idx_list[i], idx_list[i + 1]
    block      = data.iloc[start:end]
    base       = block['Name'].iloc[0]
    slug       = base.lower().replace('/', '-').replace(' ', '-')

    # a) Metadata
    csys = cs.CodeSystem()
    csys.id           = f"{slug}-supplement"
    csys.url          = f"http://fhir.de/CodeSystem/{slug}-supplement"
    csys.version      = '0.1.0'
    csys.status       = 'draft'
    csys.publisher    = 'HL7 Deutschland e.V. (Technisches Komitee FHIR)'
    csys.name         = 'Supplement' + base.replace('/', '').replace(' ', '').replace('.', '')
    csys.title        = 'Supplement ' + base
    csys.experimental = True
    csys.description  = f'CodeSystem Supplement mit Deutschen Übersetzungen für {base}'
    csys.date         = FHIRDateTime("2022-02-09")
    csys.content      = 'supplement'

    # b) Supplements aus der ersten Zeile des Blocks
    url = block['Codesystem URL'].iloc[0]
    if not url:
        print(f"Warnung: keine Codesystem-URL für Block '{base}' gefunden")
    csys.supplements = url

    # c) Konzepte nur für diesen Block
    csys.concept = []
    for _, row in block.iterrows():
        concept = cs.CodeSystemConcept()
        concept.code = row['Code']
        desi = cs.CodeSystemConceptDesignation()
        desi.language = 'de-DE'
        desi.value    = row['vorläufige Übersetzung']
        concept.designation = [desi]
        csys.concept.append(concept)

    # d) JSON-Datei schreiben mit altem Filename-Format
    safe_base = base.replace(' ', '').replace('/', '')
    out_fname = os.path.join(
        os.path.dirname(__file__),
        'output',
        f"CodeSystemSupplement-{safe_base}.json"
    )
    with open(out_fname, 'w', encoding='utf-8') as f:
        json.dump(csys.as_json(), f, indent=4, ensure_ascii=False)

    print(f"Wrote: {out_fname}")
