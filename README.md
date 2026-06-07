# Database-Casus-Reuma
## Inhoud/Structuur

- `data/raw` - Ruwe datasets voor de analyse van de reuma casus.
- `data/processed` - Verwerkte datasets gegenereerd met scripts in R.
- `scripts/` - Overzicht van de scripts gebruikt tijdens de data analyse in R.
- `resultaten/` - Figuren van GO-analyse, KEGG-analyse en Pathview analyse.
- `bronnen/` - Gebruikte bronnen voor interpertatie en maken van scripts in R.
- `assets/` - Overige documenten 
- `data_stewardship/` - Beheren van de competentie........

## Inleiding
## Methode
## Resultaten

### Volcanoplot
<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/ac21f829-27d2-4027-9061-2bd0ad2176e9" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 1. </b>Volcano plot van de differentieel geëxpresseerde genen (DEGs). De x-as geeft de log₂ fold change (effectgrootte) weer en de y-as toont de statistische significantie (-log₁₀ p-waarde). Grijze stippen (NS) vertegenwoordigen genen zonder significante verandering. Groene stippen tonen genen met een significante log₂ fold change maar zonder statistische p-waarde significantie. Rode stippen rechtsboven en linksboven geven de statistisch meest significante genen (p-waarde én log₂ FC drempelwaarde overschreden) weer, waaronder ANKRD30BL, MT-ND6 en SLC9A3R2. De gestreepte verticale lijnen markeren de log₂ fold change drempelwaarden; de horizontale gestreepte lijn markeert de p-waarde drempelwaarde. In totaal zijn 29.407 variabelen geanalyseerd..</em>
</p>

<br>

### GO-analyse

<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/52b4c630-b1e5-4a0d-a2ad-ce74ffef325d" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 2. </b>. GO Biological Process-verrijkingsanalyse van differentieel geëxpresseerde genen bij reumatoïde artritis. De analyse toont significante verrijking van processen gerelateerd aan lymfocytdifferentiatie, adaptieve immuunrespons, lymfocyt-gemedieerde immuniteit, antigeenreceptor-gemedieerde signaaltransductie en B-celactivatie. Deze processen zijn geassocieerd met de ontwikkeling, activatie en functie van immuuncellen.</em>
</p>

<br>

### KEGG-analyse

<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/eacb2306-60a2-4149-87d2-cacc6c705f60" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 3. </b> KEGG Pathway-verrijkingsanalyse van differentieel geëxpresseerde genen bij reumatoïde artritis. De meest relevante verrijkte pathways waren de Rheumatoid arthritis pathway, TNF signaling pathway, IL-17 signaling pathway, NF-kappa B signaling pathway en Th17 cell differentiation. Deze pathways zijn betrokken bij de regulatie van ontstekingsreacties, activatie van immuuncellen en de ontwikkeling van auto-immuunprocessen. Deze pathways zijn betrokken bij ontstekingsreacties, immuuncelactivatie en immuunsignalering.
.</em>
</p>

<br>

### KEGG Rheumatoid Arthritis pathway (hsa05323)

<p align="center">
  <img width="1492" height="859" alt="Image" src="https://github.com/user-attachments/assets/f9a53300-8888-4aec-b10e-5d0c91c82e57" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 4. </b> De visualisatie van differentieel geëxpresseerde genen binnen de KEGG Rheumatoid Arthritis pathway (hsa05323) toont zowel op- als neerregulatie van verschillende immuun- en weefselgerelateerde genen in patiënten met reumatoïde artritis ten opzichte van de controlegroep. Met name IL1B, TLR4, TNFSF13B (BAFF), IFNG, MMP13 en CTSL vertonen verhoogde expressie en zijn betrokken bij ontstekingssignalen, activatie van het aangeboren en adaptieve immuunsysteem, B-celregulatie en extracellulaire matrixafbraak. Daarnaast zijn ook genen met verlaagde expressie zichtbaar binnen de pathway, wat wijst op een verstoring in de balans van immuunregulatie. Samen suggereert dit een veranderde activiteit binnen de RA-pathway, waarin zowel inflammatoire activatie als processen die bijdragen aan weefselschade een rol lijken te spelen.
.</em>
</p>

<br>

<table>
  <caption><b>Tabel 1:</b> Overzicht en functies van de belangrijkste differentieel geëxpresseerde genen binnen de RA-pathway</caption>
  
  <thead>
    <tr>
      <th align="left">Gen</th>
      <th align="left">Logische reden om te bespreken</th>
      <th align="left">Functie binnen RA</th>
    </tr>
  </thead>
  
  <tbody>
    <tr>
      <td align="left"><b>IL1B</b></td>
      <td align="left">Sterk pro-inflammatoir cytokine</td>
      <td align="left">Stimuleert ontsteking, cytokineproductie en kraakbeenafbraak</td>
    </tr>
    <tr>
      <td align="left"><b>TLR4</b></td>
      <td align="left">Centrale receptor van aangeboren immuniteit</td>
      <td align="left">Activeert ontstekingsroutes zoals NF-κB</td>
    </tr>
    <tr>
      <td align="left"><b>TNFSF13B (BAFF)</b></td>
      <td align="left">Belangrijk voor B-cellen</td>
      <td align="left">Bevordert overleving en activatie van B-cellen en productie van auto-antilichamen</td>
    </tr>
    <tr>
      <td align="left"><b>IFNG</b></td>
      <td align="left">Sleutelcytokine van T-cellen</td>
      <td align="left">Versterkt immuunactivatie en ontstekingsreacties</td>
    </tr>
    <tr>
      <td align="left"><b>MMP13</b></td>
      <td align="left">Direct betrokken bij gewrichtsschade</td>
      <td align="left">Breekt extracellulaire matrix en kraakbeen af</td>
    </tr>
    <tr>
      <td align="left"><b>CTSL</b></td>
      <td align="left">Marker voor weefselafbraak</td>
      <td align="left">Draagt bij aan afbraak van bindweefsel en bot</td>
    </tr>
  </tbody>
</table>

<br>

<p align="center">
  <img width="1323" height="979" alt="Image" src="https://github.com/user-attachments/assets/138586ff-9ba9-40be-b033-3e2d6891a35d" />
  <br>
  <em>Figuur 5. hsa04668.pathview_TNF signaling pathway.</em>
</p>

## Conclusie
## AI Disclaimer
