# J2P4_Transcriptomics_Casus_Reumatoïde-artritis
## 📁Inhoud/Structuur

- `data/raw` - Ruwe datasets voor de analyse van de reuma casus.
- `data/processed` - Verwerkte datasets gegenereerd met scripts in R.
- `scripts/` - Overzicht van de scripts gebruikt tijdens de data analyse in R.
- `resultaten/` - Figuren van GO-analyse, KEGG-analyse en Pathview analyse.
- `bronnen/` - Gebruikte bronnen voor interpertatie en maken van scripts in R.
- `assets/` - Overige documenten 
- `data_stewardship/` - Beheren van de competentie........

## 📝Inleiding

Reumatoïde artritis (RA) is een chronische systemische auto-immuunziekte die voornamelijk de gewrichten aantast. De exacte oorzaak van de ziekte is nog niet volledig opgehelderd, maar er wordt aangenomen dat een combinatie van genetische aanleg, omgevingsfactoren en ontregeling van het immuunsysteem een belangrijke rol speelt (Gabriel, 2001). Een kenmerkend verschijnsel van RA is synovitis, een ontsteking van het gewrichtsslijmvlies (synovium), die kan leiden tot progressieve gewrichtsschade en functieverlies (Radu & Bungau, 2021).

De diagnose van RA wordt doorgaans gesteld op basis van klinische symptomen en de aanwezigheid van specifieke autoantilichamen, waaronder anti-cyclische gecitrullineerde peptiden (ACPA). Vroege detectie van de ziekte is van groot belang, aangezien tijdige behandeling de progressie van gewrichtsschade kan vertragen. Hoewel er momenteel geen genezende behandeling beschikbaar is, kunnen verschillende therapieën de symptomen verminderen en de ziekteactiviteit onder controle houden (Majithia & Geraci, 2007).

Transcriptomics biedt de mogelijkheid om veranderingen in genexpressie op grote schaal te onderzoeken. Door transcriptoomdata van RA-patiënten te vergelijken met die van gezonde controles kunnen genen, biologische processen en signaalroutes worden geïdentificeerd die betrokken zijn bij het ontstaan en de progressie van de ziekte. Hierdoor kan transcriptomics bijdragen aan een beter begrip van de onderliggende moleculaire mechanismen van reumatoïde artritis.

## 📑Methode

Reumatoïde artritis (RA) is een systemische auto-immuunziekte die wordt gekenmerkt door chronische ontsteking van het gewrichtsslijmvlies (synovitis), wat kan leiden tot progressieve gewrichtsschade. Transcriptomics kan worden ingezet om genexpressieverschillen tussen patiënten en gezonde controles te onderzoeken en zo inzicht te verkrijgen in de moleculaire mechanismen die betrokken zijn bij de ziekte.

Voor deze analyse werd gebruikgemaakt van een publieke RNA-seq dataset afkomstig uit een eerder onderzoek van Platzer et al. (2019). De dataset bestond uit acht synoviumbiopten, waarvan vier afkomstig waren van patiënten met gevestigde RA (ziekteduur >12 maanden) en vier van personen zonder RA. De biopten werden verkregen uit het synovium, het gewrichtsslijmvlies dat een centrale rol speelt in de pathologie van RA. Alle RA-patiënten waren positief voor anti-cyclische gecitrullineerde peptiden (ACPA), terwijl de controlegroep ACPA-negatief was. Zie tabel 1 voor overzicht samples Platzer et al. (2019).

De bio-informatische analyse werd uitgevoerd in R. Sequencing reads werden gemapt tegen het humane referentiegenoom GRCh38 met behulp van het Rsubread package. Vervolgens werden reads per gen gekwantificeerd met featureCounts. Differentiële genexpressie tussen de RA- en controlegroep werd bepaald met DESeq2. Significant gereguleerde genen werden verder onderzocht met Gene Ontology (GO)- en KEGG-pathwayanalyses, waarna relevante pathways werden gevisualiseerd met Pathview. Zie figuur 1.

<br>


<table>
  <caption><b>Tabel 1:</b> Overzicht samples uit onderzoek van Platzer et al. (2019)</caption>
 <thead>
    <tr>
      <th align="left">FASTQ</th>
      <th align="left">Leeftijd</th>
      <th align="left">Geslacht</th>
      <th align="left">Groep</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="left"><b>SRR4785819</b></td>
      <td align="left">31</td>
      <td align="left">female</td>
      <td align="left">Normal</td>
    </tr>
      <td align="left"><b>SRR4785820</b></td>
      <td align="left">15</td>
      <td align="left">female</td>
      <td align="left">Normal</td>
    </tr>
      <td align="left"><b>SRR4785828</b></td>
      <td align="left">31</td>
      <td align="left">female</td>
      <td align="left">Normal</td>
    </tr>
      <td align="left"><b>SRR4785831</b></td>
      <td align="left">42</td>
      <td align="left">female</td>
      <td align="left">Normal</td>
    </tr>
      <td align="left"><b>SRR4785979</b></td>
      <td align="left">54</td>
      <td align="left">female</td>
      <td align="left">Rheumatoid arthritis (established)</td>
    </tr>
      <td align="left"><b>SRR4785980</b></td>
      <td align="left">66</td>
      <td align="left">female</td>
      <td align="left">Rheumatoid arthritis (established)</td>
    </tr>
      <td align="left"><b>SRR4785986</b></td>
      <td align="left">60</td>
      <td align="left">female</td>
      <td align="left">Rheumatoid arthritis (established)</td>
    </tr>
      <td align="left"><b>SRR4785988</b></td>
      <td align="left">59</td>
      <td align="left">female</td>
      <td align="left">Rheumatoid arthritis (established)</td>
    </tr>
  </tbody>
</table>

<br>

<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/8ea2d7a5-98ab-459f-88da-a5d841bb0c4c" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 1. </b>RNA-seq analysepipeline. Overzicht van de bioinformatische workflow voor de verwerking van RNA-seq data, beginnend bij FASTQ-reads en referentiegenoom, gevolgd door read alignment, BAM-verwerking en genkwantificatie. De resulterende count matrix werd gebruikt voor differentiële expressieanalyse met DESeq2. Significant tot expressie komende genen werden vervolgens geanalyseerd via GO- en KEGG-enrichment en gevisualiseerd met Pathview. Gemaakt met Microsoft Visio</em>
</p>

## 📊Resultaten

### Volcanoplot
<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/ac21f829-27d2-4027-9061-2bd0ad2176e9" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 2. </b>Volcano plot van de differentieel geëxpresseerde genen (DEGs). De x-as geeft de log₂ fold change (effectgrootte) weer en de y-as toont de statistische significantie (-log₁₀ p-waarde). Grijze stippen (NS) vertegenwoordigen genen zonder significante verandering. Groene stippen tonen genen met een significante log₂ fold change maar zonder statistische p-waarde significantie. Rode stippen rechtsboven en linksboven geven de statistisch meest significante genen (p-waarde én log₂ FC drempelwaarde overschreden) weer, waaronder ANKRD30BL, MT-ND6 en SLC9A3R2. De gestreepte verticale lijnen markeren de log₂ fold change drempelwaarden; de horizontale gestreepte lijn markeert de p-waarde drempelwaarde. In totaal zijn 29.407 variabelen geanalyseerd.
</em>
</p>

<br>

### GO-analyse

<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/52b4c630-b1e5-4a0d-a2ad-ce74ffef325d" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 3. </b> GO Biological Process-verrijkingsanalyse van differentieel geëxpresseerde genen bij reumatoïde artritis. De analyse toont significante verrijking van processen gerelateerd aan lymfocytdifferentiatie, adaptieve immuunrespons, lymfocyt-gemedieerde immuniteit, antigeenreceptor-gemedieerde signaaltransductie en B-celactivatie. Deze processen zijn geassocieerd met de ontwikkeling, activatie en functie van immuuncellen.</em>
</p>

<br>

### KEGG-analyse

<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/eacb2306-60a2-4149-87d2-cacc6c705f60" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 4. </b> KEGG Pathway-verrijkingsanalyse van differentieel geëxpresseerde genen bij reumatoïde artritis. De meest relevante verrijkte pathways waren de Rheumatoid arthritis pathway, TNF signaling pathway, IL-17 signaling pathway, NF-kappa B signaling pathway en Th17 cell differentiation. Deze pathways zijn betrokken bij de regulatie van ontstekingsreacties, activatie van immuuncellen en de ontwikkeling van auto-immuunprocessen. Deze pathways zijn betrokken bij ontstekingsreacties, immuuncelactivatie en immuunsignalering.
.</em>
</p>

<br>

### KEGG Rheumatoid Arthritis pathway (hsa05323)

<p align="center">
  <img width="1492" height="859" alt="Image" src="https://github.com/user-attachments/assets/f9a53300-8888-4aec-b10e-5d0c91c82e57" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 5. </b> De visualisatie van differentieel geëxpresseerde genen binnen de KEGG Rheumatoid Arthritis pathway (hsa05323) toont zowel op- als neerregulatie van verschillende immuun- en weefselgerelateerde genen in patiënten met reumatoïde artritis ten opzichte van de controlegroep. Met name IL1B, TLR4, TNFSF13B (BAFF), IFNG, MMP13 en CTSL vertonen verhoogde expressie en zijn betrokken bij ontstekingssignalen, activatie van het aangeboren en adaptieve immuunsysteem, B-celregulatie en extracellulaire matrixafbraak. Daarnaast zijn ook genen met verlaagde expressie zichtbaar binnen de pathway, wat wijst op een verstoring in de balans van immuunregulatie. Samen suggereert dit een veranderde activiteit binnen de RA-pathway, waarin zowel inflammatoire activatie als processen die bijdragen aan weefselschade een rol lijken te spelen.
.</em>
</p>

<br>

<table>
  <caption><b>Tabel 2:</b> Overzicht en functies van de belangrijkste differentieel geëxpresseerde genen binnen de RA-pathway</caption>
  
  <thead>
    <tr>
      <th align="left">Gen</th>
      <th align="left">Functie</th>
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



## 📚Conclusie
## 🤖AI Disclaimer

AI-tools zoals ChatGPT zijn gebruikt ter ondersteuning bij het schrijven van teksten, het structureren van resultaten, en het opzetten van de GitHub-pagina, inclusief het verwerken en formatteren van externe bronnen. Alle analyses, interpretaties en eindinhoud zijn door de auteurs gecontroleerd.

## 📚Bronnen
<p>
Gabriel, S. E. (2001). <i>The epidemiology of rheumatoid arthritis</i>. 
Rheumatic Disease Clinics of North America, 27(2), 269–281. 
<a href="https://doi.org/10.1016/S0889-857X(05)70201-5" target="_blank">https://doi.org/10.1016/S0889-857X(05)70201-5</a>
</p>
<p>
Majithia, V., & Geraci, S. A. (2007). <i>Rheumatoid Arthritis: Diagnosis and Management</i>. 
The American Journal of Medicine, 120(11), 936–939. 
<a href="https://doi.org/10.1016/j.amjmed.2007.04.005" target="_blank">https://doi.org/10.1016/j.amjmed.2007.04.005</a>
</p>
<p>
Platzer, A., Nussbaumer, T., Karonitsch, T., Smolen, J. S., & Aletaha, D. (2019). 
<i>Analysis of gene expression in rheumatoid arthritis and related conditions offers insights into sex-bias, gene biotypes and co-expression patterns</i>. 
PLOS ONE, 14(7). 
<a href="https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0218885" target="_blank">https://doi.org/10.1371/journal.pone.0218885</a>
</p>
<p>
Radu, A.-F., & Bungău, S. G. (2021). <i>Management of Rheumatoid Arthritis: An Overview</i>. 
Cells, 10(11), 2857. 
<a href="https://doi.org/10.3390/cells10112857" target="_blank">https://doi.org/10.3390/cells10112857</a>
</p>


## 🌐URL's
- https://github.com/YuLab-SMU/biomedical-knowledge-mining-book
- https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#headings

