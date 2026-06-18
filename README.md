# Transcriptomische analyse toont duidelijke immuunactivatie en verrijkte ontstekingsroutes bij Reumatoïde artritis
<p align="center">
  <img width="1280" height="720" alt="Image" src="https://github.com/user-attachments/assets/debe54fc-33e3-489a-8007-17319aae4696" />
</p>

## 👨‍💼Gegevens

- Naam: Jeremy Bakker
- Student nummer: 5553121
- Klas: LBM2-B
- Studie: Biologie en Medisch Laboratoriumonderzoek - NHL Stenden / Van Hall Larenstein Leeuwarden
- Periode code: 25-26 J2P4_BM Innovatieve Diagnostiek TD-2526-0754
- Tutor: Dewi van der Bergh

  
## 1. 📁Inhoud/Structuur

- `data/raw` - Ruwe datasets voor de analyse van de reuma casus.
- `data/processed` - Verwerkte datasets gegenereerd met scripts in R.
- `scripts/` - Overzicht van de scripts gebruikt tijdens de data analyse in R.
- `resultaten/` - Figuren van GO-analyse, KEGG-analyse en Pathview analyse.
- `bronnen/` - Gebruikte bronnen voor interpertatie en maken van scripts in R.
- `assets/` - Overige documenten gebruikt bij dit project.
- `data_stewardship/` - Beheren van de competentie voor data stewardship.

<br>

## 2. 📝Inleiding

Reumatoïde artritis (RA) is een chronische systemische auto-immuunziekte die voornamelijk de gewrichten aantast. De exacte oorzaak van de ziekte is nog niet volledig opgehelderd, maar er wordt aangenomen dat een combinatie van genetische aanleg, omgevingsfactoren en ontregeling van het immuunsysteem een belangrijke rol speelt [(Gabriel, 2001)](https://doi.org/10.1016/s0889-857x(05)70201-5). Een kenmerkend verschijnsel van RA is synovitis, een ontsteking van het gewrichtsslijmvlies (synovium), die kan leiden tot progressieve gewrichtsschade en functieverlies [(Radu & Bungau, 2021)](https://doi.org/10.3390/cells10112857).

De diagnose van RA wordt doorgaans gesteld op basis van klinische symptomen en de aanwezigheid van specifieke autoantilichamen, waaronder anti-cyclische gecitrullineerde peptiden (ACPA). Vroege detectie van de ziekte is van groot belang, aangezien tijdige behandeling de progressie van gewrichtsschade kan vertragen. Hoewel er momenteel geen genezende behandeling beschikbaar is, kunnen verschillende therapieën de symptomen verminderen en de ziekteactiviteit onder controle houden [(Majithia & Geraci, 2007)](https://doi.org/10.1016/j.amjmed.2007.04.005).

### Hoofdvraag: 
- Welke transcriptomische verschillen bestaan er tussen patiënten met reumatoïde artritis en gezonde controles, en welke biologische processen en signaalroutes zijn hierbij betrokken?

### Deelvragen: 
- In welke mate verschillen de genexpressieprofielen van RA-patiënten en gezonde controles? 
- Welke genen zijn significant differentieel geëxpresseerd tussen beide groepen? Welke biologische processen zijn verrijkt onder de differentieel geëxpresseerde genen? 
- Welke signaalroutes zijn geassocieerd met de differentieel geëxpresseerde genen?

<br>

## 3. 📑Methode

Voor deze analyse werd gebruikgemaakt van een publieke RNA-seq dataset afkomstig uit een eerder onderzoek van [Platzer et al. (2019)](https://doi.org/10.1371/journal.pone.0219698). De dataset bestond uit acht synoviumbiopten, waarvan vier afkomstig waren van patiënten met gevestigde RA (ziekteduur >12 maanden) en vier van personen zonder RA. De biopten werden verkregen uit het synovium, het gewrichtsslijmvlies dat een centrale rol speelt in de pathologie van RA. Alle RA-patiënten waren positief voor anti-cyclische gecitrullineerde peptiden (ACPA), terwijl de controlegroep ACPA-negatief was. Zie tabel 1 voor overzicht samples [Platzer et al. (2019)](https://doi.org/10.1371/journal.pone.0219698).

De bio-informatische analyse werd uitgevoerd in R Studio (V4.5.2). Sequencing reads werden gemapt tegen het humane referentiegenoom GRCh38 [(NCBI, 2026)](https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000001405.40/) met behulp van het Rsubread package (V2.24.0)[(Liao et al., 2019)](https://doi.org/10.1093/nar/gkz114). Vervolgens werden reads per gen gekwantificeerd met featureCounts. Differentiële genexpressie tussen de RA- en controlegroep werd bepaald met DESeq2 (V1.50.2)[(Love et al., 2014)](https://doi.org/10.1186/s13059-014-0550-8). Significant gereguleerde genen werden verder onderzocht met Gene Ontology (GO) [(Carbon et al., 2020)](https://doi.org/10.1093/nar/gkaa1113) en KEGG-pathwayanalyses [(Kanehisa et al., 2023)](https://doi.org/10.1093/nar/gkac963), met behulp van clusterProfiler (V4.18.4)[(Yu et al., 2012)](https://doi.org/10.1089/omi.2011.0118). Waarna relevante pathways werden gevisualiseerd met Pathview (V1.50.0)[(Luo & Brouwer, 2013)](https://doi.org/10.1093/bioinformatics/btt285). Zie <strong>[Figuur 1]</strong>.

<br>
<table>
  <caption><b>Tabel 1:</b> Overzicht samples uit onderzoek van Platzer et al. (2019)</caption>
 <thead>
    <tr>
      <th align="left">FASTQ</th>
      <th align="center">Leeftijd</th>
      <th align="center">Geslacht</th>
      <th align="left">Groep</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="left"><b>SRR4785819</b></td>
      <td align="center">31</td>
      <td align="center">female</td>
      <td align="left">Normal</td>
    </tr>
      <td align="left"><b>SRR4785820</b></td>
      <td align="center">15</td>
      <td align="center">female</td>
      <td align="left">Normal</td>
    </tr>
      <td align="left"><b>SRR4785828</b></td>
      <td align="center">31</td>
      <td align="center">female</td>
      <td align="left">Normal</td>
    </tr>
      <td align="left"><b>SRR4785831</b></td>
      <td align="center">42</td>
      <td align="center">female</td>
      <td align="left">Normal</td>
    </tr>
      <td align="left"><b>SRR4785979</b></td>
      <td align="center">54</td>
      <td align="center">female</td>
      <td align="left">Rheumatoid arthritis (established)</td>
    </tr>
      <td align="left"><b>SRR4785980</b></td>
      <td align="center">66</td>
      <td align="center">female</td>
      <td align="left">Rheumatoid arthritis (established)</td>
    </tr>
      <td align="left"><b>SRR4785986</b></td>
      <td align="center">60</td>
      <td align="center">female</td>
      <td align="left">Rheumatoid arthritis (established)</td>
    </tr>
      <td align="left"><b>SRR4785988</b></td>
      <td align="center">59</td>
      <td align="center">female</td>
      <td align="left">Rheumatoid arthritis (established)</td>
    </tr>
  </tbody>
</table>

<br>

<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/392fa4c2-3e95-4958-b41f-7f0782ea16be" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 1. </b>RNA-seq analysepipeline. Overzicht van de bioinformatische workflow voor de verwerking van RNA-seq data, beginnend bij FASTQ-reads en referentiegenoom, gevolgd door read alignment, BAM-verwerking en genkwantificatie. De resulterende count matrix werd gebruikt voor differentiële expressieanalyse met DESeq2. Significant tot expressie komende genen werden vervolgens geanalyseerd via GO- en KEGG-enrichment en gevisualiseerd met Pathview. Gemaakt met Microsoft Visio.</em>
</p>

<br>

## 4. 📊Resultaten

### 4.1 PCA & Volcanoplot
<p>
De transcriptomische analyse omvatte in totaal 29.407 genen. PCA-analyse toonde een duidelijke scheiding tussen de NORM- en RA-groep op basis van de eerste twee hoofdcomponenten, die respectievelijk 74% en 10% van de totale variantie verklaarden, wat wijst op duidelijke verschillen in genexpressieprofielen tussen beide groepen. Differentiële expressieanalyse identificeerde 4.486 genen die voldeden aan de criteria voor significante expressieverschillen (padj < 0.05 en |log2 fold change| > 1). De volcano plot visualiseert deze verdeling, waarbij genen met een significante verandering in expressie en statistische significantie worden onderscheiden van niet-significante genen. Zowel sterk opgereguleerde als neerreguleerde genen werden waargenomen, wat duidt op brede transcriptomische veranderingen tussen de NORM- en RA-groep <strong>[Figuur 2]</strong>.
</p>

<p align="center">
  <img width="1600" height="900" alt="Image" src="https://github.com/user-attachments/assets/5fe39c2b-a0a4-4d8c-83c8-1701e41013a5" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 2. </b>Transcriptomische verschillen tussen de NORM- en RA-groep. (A) PCA-plot van de genexpressiegegevens. PC1 en PC2 verklaren respectievelijk 74% en 10% van de totale variantie. De monsters vertonen een scheiding tussen de NORM- en RA-groep op basis van hun genexpressieprofielen. (B) Volcano plot van de differentieel geëxpresseerde genen (DEGs). De x-as toont de log₂ fold change en de y-as de statistische significantie (-log₁₀ p-waarde). Grijze stippen vertegenwoordigen niet-significante genen, groene stippen genen met een significante log₂ fold change en rode stippen genen die zowel de log₂ fold change- als de p-waardedrempel overschrijden. Voorbeelden van sterk significante genen zijn ANKRD30BL, MT-ND6 en SLC9A3R2. De gestreepte lijnen geven de ingestelde drempelwaarden weer. In totaal zijn 29.407 genen geanalyseerd, 4.486 genen voldeden aan de criteria voor significante expressieverschillen (padj < 0.05 en |log2 fold change| > 1).</em>
</p>

<br>

### 4.2 GO-analyse
<p>
De GO Biological Process-verrijkingsanalyse liet een significante verrijking van immuungerelateerde processen zien, waaronder lymfocytdifferentiatie, adaptieve immuunrespons, lymfocyt-gemedieerde immuniteit, antigeenreceptor-gemedieerde signaaltransductie en B-celactivatie <strong>[Figuur 3]</strong> en <strong>[Tabel 2]</strong>.
</p>
<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/52b4c630-b1e5-4a0d-a2ad-ce74ffef325d" />
  <br>
</p>

<p align="left">
  <em><b>Figuur 3. </b> GO Biological Process-verrijkingsanalyse van differentieel geëxpresseerde genen bij reumatoïde artritis. De analyse toont significante verrijking van processen gerelateerd aan lymfocytdifferentiatie, adaptieve immuunrespons, lymfocyt-gemedieerde immuniteit, antigeenreceptor-gemedieerde signaaltransductie en B-celactivatie.</em>
</p>


<table>
  <caption><b>Tabel 2:</b> Top 10 enriched GO termen</caption>
 <thead>
    <tr>
      <th align="center">Category</th>
      <th align="left">Term</th>
      <th align="left">Count</th>
      <th align="left">Adjusted p-value</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="center"><b>BP</b></td>
      <td align="left">lymphocyte differentiation</td>
      <td align="center">164</td>
      <td align="center">4.78 × 10<sup>-10</sup></td>
    </tr>
      <td align="center"><b>BP</b></td>
      <td align="left">adaptive immune response based on somatic recombination of immune receptors built from immunoglobulin superfamily domains</td>
      <td align="center">151</td>
      <td align="center">2.36 × 10<sup>-10</sup></td>
    </tr>
      <td align="center"><b>BP</b></td>
      <td align="left">lymphocyte mediated immunity</td>
      <td align="center">137</td>
      <td align="center">1.10 × 10<sup>-7</sup></td>
    </tr>
      <td align="center"><b>BP</b></td>
      <td align="left">leukocyte proliferation</td>
      <td align="center">125</td>
      <td align="center">1.36 × 10<sup>-6</sup></td>
    </tr>
      <td align="center"><b>BP</b></td>
      <td align="left">lymphocyte proliferation</td>
      <td align="center">113</td>
      <td align="center">1.36 × 10<sup>-6</sup></td>
    </tr>
      <td align="center"><b>BP</b></td>
      <td align="left">B cell activation</td>
      <td align="center">108</td>
      <td align="center">9.48 × 10<sup>-7</sup></td>
    </tr>
      <td align="center"><b>BP</b></td>
      <td align="left">cellular response to biotic stimulus</td>
      <td align="center">99</td>
      <td align="center">9.25 × 10<sup>-7</sup></td>
    </tr>
      <td align="center"><b>BP</b></td>
      <td align="left">cellular response to molecule of bacterial origin</td>
      <td align="center">92</td>
      <td align="center">4.83 × 10<sup>-7</sup></td>
    </tr>
      <td align="center"><b>BP</b></td>
      <td align="left">antigen receptor-mediated signaling pathway</td>
      <td align="center">91</td>
      <td align="center">7.16 × 10<sup>-9</sup></td>
    </tr>
      <td align="center"><b>BP</b></td>
      <td align="left">immunoglobulin mediated immune response</td>
      <td align="center">87</td>
      <td align="center">1.64 × 10<sup>-9</sup></td>
    </tr>
  </tbody>
</table>

  <br>

### 4.3 KEGG-analyse
<p>
De KEGG pathway-analyse identificeerde meerdere significant verrijkte pathways, waaronder de rheumatoid arthritis pathway, TNF signaling pathway, IL-17 signaling pathway, NF-kappa B signaling pathway en Th17 cell differentiation. Deze pathways zijn betrokken bij ontstekingssignalering, immuunactivatie en adaptieve immuunrespons zie <strong>[Figuur 4]</strong> en <strong>[Tabel 3]</strong>.
</p>

<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/eacb2306-60a2-4149-87d2-cacc6c705f60" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 4. </b> KEGG Pathway-verrijkingsanalyse van differentieel geëxpresseerde genen bij reumatoïde artritis. De meest relevante verrijkte pathways waren de Rheumatoid arthritis pathway, TNF signaling pathway, IL-17 signaling pathway, NF-kappa B signaling pathway en Th17 cell differentiation. Deze pathways zijn betrokken bij de regulatie van ontstekingsreacties, activatie van immuuncellen en de ontwikkeling van auto-immuunprocessen. Deze pathways zijn betrokken bij ontstekingsreacties, immuuncelactivatie en immuunsignalering.</em>
</p>

<table>
  <caption><b>Tabel 3:</b> Kyoto Encyclopedia of Genes and Genomes pathway analysis of integrated differentially expressed genes. Top 10 enriched KEGG termen.</caption>
 <thead>
    <tr>
      <th align="left">Pathway</th>
      <th align="center">ID</th>
      <th align="left">Gene_count</th>
      <th align="left">p-value</th>
      <th align="left">Genes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="left"><b>MAPK signaling pathway</b></td>
      <td align="left">hsa04010</td>
      <td align="center">93</td>
      <td align="left">0.00390113449114229</td>
      <td align="left">AKT1, CACNA1D, CACNA1H, CACNA2D4, CACNB1, CACNB3, CASP3, CHUK, CSF1, DAXX, DDIT3, DUSP5, DUSP6, DUSP7, DUSP8, ECSIT, EFNA2, ERBB2, FGF23, FGF7, FLT1, FLT3LG, GADD45G, HRAS, HSPA1A, HSPA1B, HSPB1</td>
    </tr>
      <td align="left"><b>Epstein-Barr virus infection</b></td>
      <td align="left">hsa05169</td>
      <td align="center">68</td>
      <td align="left">0.00335694425358938</td>
      <td align="left">ADRM1, AKT1, B2M, BAX, BCL2, BCL2L11, CASP3, CASP8, CCND1, CCND2, CD19, CD3D, CD58, CD4, CHUK, CR2, CXCL10, E2F3, ENTPD1, GADD45G, HES1, HLA-DOB, HLA-DPA1, HLA-DRA, HLA-DRB1, HLA-DRB4, HLA-F, IFNA</td>
    </tr>
      <td align="left"><b>NOD-like receptor signaling pathway</b></td>
      <td align="left">hsa04621</td>
      <td align="center">67</td>
      <td align="left">0.00102996703705523</td>
      <td align="left">AIM2, ANTXR1, ANTXR2, ATG16L1, ATG5, BCL2, BIRC3, CARD16, CARD6, CARD8, CARD9, CASP4, CASP5, CASP8, CASR, CCL2, CHUK, CXCL1, CXCL2, CXCL3, CXCL8, CYBB, DEFA1, GABARAP, GBP1, GBP5, GSDMD, HSP90AB1</td>
    </tr>
      <td align="left"><b>TNF signaling pathway</b></td>
      <td align="left">hsa04668</td>
      <td align="center">46</td>
      <td align="left">0.00193392176389528</td>
      <td align="left">ADAM17, AKT1, ATF6B, BIRC3, CASP10, CASP3, CASP8, CCL2, CHUK, CSF1, CX3CL1, CXCL1, CXCL10, CXCL2, CXCL3, CXCL6, CYLD, DAB2IP, EDN1, IL15, IL1B, IRF1, JUN, JUNB, MAP2K4, MAP2K7, MAP3K5, MAP3K7, MAPK12</td>
    </tr>
      <td align="left"><b>NF-kappa B signaling pathway</b></td>
      <td align="left">hsa04064</td>
      <td align="center">43</td>
      <td align="left">0.00102996703705523</td>
      <td align="left">ATM, BCL2, BCL2A1, BIRC3, CARD10, CHUK, CSNK2B, CXCL1, CXCL2, CXCL3, CXCL8, CYLD, EDA, EDARADD, GADD45G, IL1B, IRAK1, IRAK2, LBP, LTBR, LY96, LYN, MALT1, MAP3K7, NFKB1, NFKB2, PIAS4, PIDD1, PLCG2, PPP1R</td>
    </tr>
      <td align="left"><b>Th17 cell differentiation</b></td>
      <td align="left">hsa04659</td>
      <td align="center">41</td>
      <td align="left">0.00435344378211124</td>
      <td align="left">CD3D, CHUK, GATA3, HIF1A, HLA-DOB, HLA-DPA1, HLA-DRA, HLA-DRB1, HLA-DRB4, HSP90AB1, IFNG, IFNGR1, IL1B, IL1RAP, IL21R, IL2RA, IL2RB, IL2RG, IRF4, JAK2, JUN, MAPK12, MAPK14, MAPK3, MAPK8, MTOR, NFATC2</td>
    </tr>
      <td align="left"><b>AGE-RAGE signaling pathway in diabetic complications</b></td>
      <td align="left">hsa04933</td>
      <td align="center">40</td>
      <td align="left">0.00273426845638295</td>
      <td align="left">AKT1, BAX, BCL2, CASP3, CCL2, CCND1, CDK4, COL4A2, COL4A4, CXCL8, CYBB, EDN1, EGR1, HRAS, IL1B, JAK2, JUN, MAPK12, MAPK14, MAPK3, MAPK8, MMP2, NFKB1, PIK3R2, PIM1, PLCB3, PLCD1, PLCD3, PLCG2, PRKCB</td>
    </tr>
      <td align="left"><b>Rheumatoid arthritis</b></td>
      <td align="left">hsa05323</td>
      <td align="center">37</td>
      <td align="left">0.00335694425358938</td>
      <td align="left">ATP6AP1, ATP6V0C, ATP6V0E1, ATP6V1A, ATP6V1B2, CCL2, CD28, CD86, CSF1, CTLA4, CTSL, CXCL1, CXCL2, CXCL3, CXCL6, CXCL8, FLT1, HLA-DOB, HLA-DPA1, HLA-DRA, HLA-DRB1, HLA-DRB4, IFNG, IL15, IL1B, ITGAL, JUN</td>
    </tr>
      <td align="left"><b>IL-17 signaling pathway</b></td>
      <td align="left">hsa04657</td>
      <td align="center">37</td>
      <td align="left">0.00383832578246515</td>
      <td align="left">CASP3, CASP8, CCL2, CHUK, CXCL1, CXCL10, CXCL2, CXCL3, CXCL6, CXCL8, HSP90AB1, IFNG, IL17RC, IL17RE, IL1B, JUN, JUND, MAP3K7, MAPK12, MAPK14, MAPK15, MAPK3, MAPK7, MAPK8, MMP1, MMP3, MMP9, MUC5B</td>
    </tr>
      <td align="left"><b>Leishmaniasis</b></td>
      <td align="left">hsa05140</td>
      <td align="center">34</td>
      <td align="left">0.00114374802489345</td>
      <td align="left">CR1, CR1L, CYBB, FCGR1A, FCGR2A, FCGR3A, HLA-DOB, HLA-DPA1, HLA-DRA, HLA-DRB1, HLA-DRB4, IFNG, IFNGR1, IL1B, IRAK1, IRAK2, ITGA4, JAK2, JUN, MAP3K7, MAPK12, MAPK14, MAPK3, NFKB1, NFKBIB, PRKCB, PTG</td>
    </tr>
  </tbody>
</table>

<br>

### 4.4 KEGG Rheumatoid Arthritis pathway (hsa05323)
<p>
De visualisatie van de rheumatoid arthritis pathway (hsa05323) is afzonderlijk gevisualiseerd met Pathview en toonde zowel op- als neerregulatie van genen binnen de pathway. Onder andere IL1B, TLR4, TNFSF13B, IFNG, MMP13 en CTSL vertoonden verhoogde expressie in de RA-groep dan de NORM-groep zie <strong>[Figuur 5]</strong> en <strong>[Tabel 4]</strong>.
</p>

<p align="center">
  <img width="1492" height="859" alt="Image" src="https://github.com/user-attachments/assets/f9a53300-8888-4aec-b10e-5d0c91c82e57" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 5. </b> Visualisatie van differentieel geëxpresseerde genen binnen de KEGG Rheumatoid Arthritis pathway (hsa05323). Rood gekleurde genen zijn opgereguleerd en groen gekleurde genen zijn neergereguleerd in de RA-groep ten opzichte van de NORM-groep. Genen zoals IL1B, TLR4, TNFSF13B (BAFF), IFNG, MMP13 en CTSL vertonen verhoogde expressie. Zowel op- als neergereguleerde genen zijn zichtbaar binnen de pathway. Zie tabel 4.</em>
</p>

<br>

<table>
  <caption><b>Tabel 4:</b> Overzicht en functies van de belangrijkste differentieel geëxpresseerde genen binnen de RA-pathway</caption>
  
  <thead>
    <tr>
      <th align="center">Gen</th>
      <th align="left">Functie</th>
      <th align="left">Functie binnen RA</th>
    </tr>
  </thead>
  
  <tbody>
    <tr>
      <td align="center"><b>IL1B</b></td>
      <td align="left">Sterk pro-inflammatoir cytokine</td>
      <td align="left">Stimuleert ontsteking, cytokineproductie en kraakbeenafbraak</td>
    </tr>
    <tr>
      <td align="center"><b>TLR4</b></td>
      <td align="left">Centrale receptor van aangeboren immuniteit</td>
      <td align="left">Activeert ontstekingsroutes zoals NF-κB</td>
    </tr>
    <tr>
      <td align="center"><b>TNFSF13B (BAFF)</b></td>
      <td align="left">Belangrijk voor B-cellen</td>
      <td align="left">Bevordert overleving en activatie van B-cellen en productie van auto-antilichamen</td>
    </tr>
    <tr>
      <td align="center"><b>IFNG</b></td>
      <td align="left">Sleutelcytokine van T-cellen</td>
      <td align="left">Versterkt immuunactivatie en ontstekingsreacties</td>
    </tr>
    <tr>
      <td align="center"><b>MMP13</b></td>
      <td align="left">Direct betrokken bij gewrichtsschade</td>
      <td align="left">Breekt extracellulaire matrix en kraakbeen af</td>
    </tr>
    <tr>
      <td align="center"><b>CTSL</b></td>
      <td align="left">Marker voor weefselafbraak</td>
      <td align="left">Draagt bij aan afbraak van bindweefsel en bot</td>
    </tr>
  </tbody>
</table>

<br>

## 5. 📚Conclusie

De transcriptomische analyse toont duidelijke verschillen tussen de NORM- en RA-groep, wat wijst op een brede verstoring in genexpressie bij reumatoïde artritis. In totaal werden 4.486 genen geïdentificeerd als differentieel geëxpresseerd (padj < 0.05 en |log2 fold change| > 1), wat duidt op significante moleculaire verschillen tussen beide condities.


Verrijkingsanalyses op basis van GO Biological Process en KEGG pathways laten zien dat deze verschillen voornamelijk samenhangen met immuunactivatie, ontstekingssignalering en adaptieve immuunrespons. Met name kwamen processen zoals lymfocytdifferentiatie, B-celactivatie en antigeenreceptor-gemedieerde signaaltransductie sterk naar voren [(Huang et al., 2023)](https://doi.org/10.3389/fgene.2023.1083615).


Binnen de KEGG rheumatoid arthritis pathway (hsa05323) werd zowel op- als neerregulatie van genen waargenomen. Genen zoals IL1B, TLR4, TNFSF13B, IFNG, MMP13 en CTSL waren verhoogd geëxpresseerd en zijn betrokken bij ontstekingsprocessen, immuunresponsen en weefselafbraak, processen die kenmerkend zijn voor reumatoïde artritis [(Komatsu & Takayanagi, 2022](https://doi.org/10.1038/s41584-022-00793-5); [Nandakumar et al., 2023)](https://doi.org/10.3390/ijms242115883).

De verhoogde expressie van IL1B, TLR4, IFNG, TNFSF13B, MMP13 en CTSL wijst op activatie van ontstekings- en immuunroutes en processen betrokken bij gewrichtsdestructie. Deze resultaten ondersteunen de betrokkenheid van zowel aangeboren als adaptieve immuunresponsen bij de pathogenese van reumatoïde artritis en komen overeen met eerder beschreven moleculaire mechanismen van de ziekte [(Komatsu & Takayanagi, 2022](https://doi.org/10.1038/s41584-022-00793-5); [Nandakumar et al., 2023)](https://doi.org/10.3390/ijms242115883).

<br>

## 6. 📚Bronnen

<p>
The Gene Ontology Consortium. (2021).<i>The Gene Ontology resource: enriching a GOld mine</i>.<i>Nucleic Acids Research, 49</i>(D1), D325–D334.
<a href="https://doi.org/10.1093/nar/gkaa1113">https://doi.org/10.1093/nar/gkaa1113
</p>

<p>
OpenAI. (2026). ChatGPT (June 18 version) [Large language model]. 
<a href="https://chat.openai.com">https://chat.openai.com</a>
</p>

<p>
Gabriel, S. E. (2001). <i>The epidemiology of rheumatoid arthritis</i>. Rheumatic Disease Clinics of North America, 27(2), 269–281.
<a href="https://doi.org/10.1016/s0889-857x(05)70201-5" target="_blank">https://doi.org/10.1016/s0889-857x(05)70201-5</a>
</p>

<p>
Huang, H., Dong, X., Mao, K., Pan, W., Nie, B., &amp; Jiang, L. (2023). <i>Identification of key candidate genes and pathways in rheumatoid arthritis and osteoarthritis by integrated bioinformatical analysis. 
<i>Frontiers in Genetics</em>, 14, 1083615. 
<a href="https://doi.org/10.3389/fgene.2023.1083615">https://doi.org/10.3389/fgene.2023.1083615</a>
</p>

<p>
Komatsu, N., &amp; Takayanagi, H. (2022). <i>Mechanisms of joint destruction in rheumatoid arthritis—immune cell–fibroblast–bone interactions</i>. <i>Nature Reviews Rheumatology, 18</i>(7), 415–429.
<a href="https://doi.org/10.1038/s41584-022-00793-5">https://doi.org/10.1038/s41584-022-00793-5
</p>

<p>
Liao, Y., Smyth, G. K., &amp; Shi, W. (2019). 
The R package Rsubread is easier, faster, cheaper and better for alignment and quantification of RNA sequencing reads. <i>Nucleic Acids Research</i>, 47, e47. 
<a href="https://doi.org/10.1093/nar/gkz114">https://doi.org/10.1093/nar/gkz114</a>
</p>

<p>
Kanehisa, M., Furumichi, M., Sato, Y., Ishiguro-Watanabe, M., &amp; Tanabe, M. (2023). <i>KEGG: integrating viruses and cellular organisms</i>. Nucleic Acids Research, 51(D1), D587–D592.
<a href="https://doi.org/10.1093/nar/gkac963" target="_blank">https://doi.org/10.1093/nar/gkac963</a>
</p>

<p>
Liu, F., Huang, Y., Liu, F., &amp; Wang, H. (2023). <i>Identification of immune-related genes in diagnosing atherosclerosis with rheumatoid arthritis through bioinformatics analysis and machine learning</i>. Frontiers in Immunology, 14.
<a href="https://doi.org/10.3389/fimmu.2023.1126647" target="_blank">https://doi.org/10.3389/fimmu.2023.1126647</a>
</p>

<p>
Love, M. I., Huber, W., &amp; Anders, S. (2014). <i>Moderated estimation of fold change and dispersion for RNA-seq data with DESeq2</i>. Genome Biology, 15(12), 550.
<a href="https://doi.org/10.1186/s13059-014-0550-8" target="_blank">https://doi.org/10.1186/s13059-014-0550-8</a>
</p>

<p>
Luo, W., &amp; Brouwer, C. (2013). <i>Pathview: an R/Bioconductor package for pathway-based data integration and visualization</i>. Bioinformatics, 29(14), 1830–1831.
<a href="https://doi.org/10.1093/bioinformatics/btt285" target="_blank">https://doi.org/10.1093/bioinformatics/btt285</a>
</p>

<p>
Majithia, V., &amp; Geraci, S. A. (2007). <i>Rheumatoid Arthritis: Diagnosis and Management</i>. The American Journal of Medicine, 120(11), 936–939.
<a href="https://doi.org/10.1016/j.amjmed.2007.04.005" target="_blank">https://doi.org/10.1016/j.amjmed.2007.04.005</a>
</p>

<p>
Nandakumar, K. S., Fang, Q., Ågren, I. W., &amp; Bejmo, Z. F. (2023). <i>Aberrant activation of immune and non-immune cells contributes to joint inflammation and bone degradation in rheumatoid arthritis</i>.
<i>International Journal of Molecular Sciences, 24</i>(21), 15883.
<a href="https://doi.org/10.3390/ijms242115883">https://doi.org/10.3390/ijms242115883
</p>

<p>
NCBI. (2026). <i>Homo sapiens genome assembly GRCh38.p14</i>. NCBI.
<a href="https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000001405.40/" target="_blank">. https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000001405.40/</a>
</p>

<p>
Perplexity AI. (2026). Perplexity [Large language model]. 
<a href="https://www.perplexity.ai">https://www.perplexity.ai</a>
</p>

<p>
Platzer, A., Nussbaumer, T., Karonitsch, T., Smolen, J. S., &amp; Aletaha, D. (2019). <i>Analysis of gene expression in rheumatoid arthritis and related conditions offers insights into sex-bias, gene biotypes and co-expression patterns.<i>PLOS ONE</i>, 14(7), e0219698. 
<a href="https://doi.org/10.1371/journal.pone.0219698">https://doi.org/10.1371/journal.pone.0219698</a>
</p>

<p>
Radu, A.-F., &amp; Bungău, S. G. (2021). <i>Management of Rheumatoid Arthritis: An Overview</i>. Cells, 10(11), 2857.
<a href="https://doi.org/10.3390/cells10112857" target="_blank">https://doi.org/10.3390/cells10112857</a>
</p>

<p>
The Gene Ontology Consortium. (2021). <i>The Gene Ontology resource: enriching a GOld mine</i>. Nucleic Acids Research, 49(D1), D325–D334.
<a href="https://doi.org/10.1093/nar/gkaa1113" target="_blank">https://doi.org/10.1093/nar/gkaa1113</a>
</p>

<p>
Yu, F., Hu, G., Li, L., Yu, B., &amp; Liu, R. (2022). <i>Identification of key candidate genes and biological pathways in the synovial tissue of patients with rheumatoid arthritis</i>. Experimental and Therapeutic Medicine, 23(6).
<a href="https://doi.org/10.3892/etm.2022.11295" target="_blank">https://doi.org/10.3892/etm.2022.11295</a>
</p>

<p>
Yu, G., Wang, L.-G., Han, Y., &amp; He, Q.-Y. (2012). <i>clusterProfiler: an R package for comparing biological themes among gene clusters</i>. OMICS: A Journal of Integrative Biology, 16(5), 284–287.
<a href="https://doi.org/10.1089/omi.2011.0118" target="_blank">https://doi.org/10.1089/omi.2011.0118</a>
</p>

<br>

## I. 🤖AI Disclaimer
AI-tools zoals ChatGPT en Perplexity zijn gebruikt ter ondersteuning bij het zoeken van wetenschapelijke artikelen, het schrijven van teksten, het structureren van resultaten, en het opzetten van de GitHub-pagina, inclusief het verwerken en formatteren van externe bronnen. Alle analyses, interpretaties en eindinhoud zijn door de auteur/student gecontroleerd.

<br>

## II. 🌐URL's
- https://github.com/YuLab-SMU/biomedical-knowledge-mining-book
- https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#headings

### Bronnen voor het maken afbeelding
- https://popculturereferences.com/when-did-house-first-say-its-never-lupus/
- https://online-fonts.com/fonts/house-md


