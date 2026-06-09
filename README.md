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
  <em><b>Figuur 2. </b>Volcano plot van de differentieel geëxpresseerde genen (DEGs). De x-as geeft de log₂ fold change (effectgrootte) weer en de y-as toont de statistische significantie (-log₁₀ p-waarde). Grijze stippen (NS) vertegenwoordigen genen zonder significante verandering. Groene stippen tonen genen met een significante log₂ fold change maar zonder statistische p-waarde significantie. Rode stippen rechtsboven en linksboven geven de statistisch meest significante genen (p-waarde én log₂ FC drempelwaarde overschreden) weer, waaronder ANKRD30BL, MT-ND6 en SLC9A3R2. De gestreepte verticale lijnen markeren de log₂ fold change drempelwaarden; de horizontale gestreepte lijn markeert de p-waarde drempelwaarde. In totaal zijn 29.407 variabelen geanalyseerd.</em>
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


<table>
  <caption><b>Tabel 2:</b> Top 10 enriched GO termen</caption>
 <thead>
    <tr>
      <th align="left">Category</th>
      <th align="left">Term</th>
      <th align="left">Count</th>
      <th align="left">Adjusted p-value</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="left"><b>BP</b></td>
      <td align="left">lymphocyte differentiation</td>
      <td align="left">164</td>
      <td align="left">4.78 × 10<sup>-10</sup></td>
    </tr>
      <td align="left"><b>BP</b></td>
      <td align="left">adaptive immune response based on somatic recombination of immune receptors built from immunoglobulin superfamily domains</td>
      <td align="left">151</td>
      <td align="left">2.36 × 10<sup>-10</sup></td>
    </tr>
      <td align="left"><b>BP</b></td>
      <td align="left">lymphocyte mediated immunity</td>
      <td align="left">137</td>
      <td align="left">1.10 × 10<sup>-7</sup></td>
    </tr>
      <td align="left"><b>BP</b></td>
      <td align="left">leukocyte proliferation</td>
      <td align="left">125</td>
      <td align="left">1.36 × 10<sup>-6</sup></td>
    </tr>
      <td align="left"><b>BP</b></td>
      <td align="left">lymphocyte proliferation</td>
      <td align="left">113</td>
      <td align="left">1.36 × 10<sup>-6</sup></td>
    </tr>
      <td align="left"><b>BP</b></td>
      <td align="left">B cell activation</td>
      <td align="left">108</td>
      <td align="left">9.48 × 10<sup>-7</sup></td>
    </tr>
      <td align="left"><b>BP</b></td>
      <td align="left">cellular response to biotic stimulus</td>
      <td align="left">99</td>
      <td align="left">9.25 × 10<sup>-7</sup></td>
    </tr>
      <td align="left"><b>BP</b></td>
      <td align="left">cellular response to molecule of bacterial origin</td>
      <td align="left">92</td>
      <td align="left">4.83 × 10<sup>-7</sup></td>
    </tr>
      <td align="left"><b>BP</b></td>
      <td align="left">antigen receptor-mediated signaling pathway</td>
      <td align="left">91</td>
      <td align="left">7.16 × 10<sup>-9</sup></td>
    </tr>
      <td align="left"><b>BP</b></td>
      <td align="left">immunoglobulin mediated immune response</td>
      <td align="left">87</td>
      <td align="left">1.64 × 10<sup>-9</sup></td>
    </tr>
  </tbody>
</table>

  <br>

### KEGG-analyse

<p align="center">
  <img width="700" height="700" alt="Image" src="https://github.com/user-attachments/assets/eacb2306-60a2-4149-87d2-cacc6c705f60" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 4. </b> KEGG Pathway-verrijkingsanalyse van differentieel geëxpresseerde genen bij reumatoïde artritis. De meest relevante verrijkte pathways waren de Rheumatoid arthritis pathway, TNF signaling pathway, IL-17 signaling pathway, NF-kappa B signaling pathway en Th17 cell differentiation. Deze pathways zijn betrokken bij de regulatie van ontstekingsreacties, activatie van immuuncellen en de ontwikkeling van auto-immuunprocessen. Deze pathways zijn betrokken bij ontstekingsreacties, immuuncelactivatie en immuunsignalering.</em>
</p>

<table>
  <caption><b>Tabel 3:</b> Kyoto Encyclopedia of Genes and Genomes pathway analysis of integrated differentially expressed genes.</caption>
 <thead>
    <tr>
      <th align="left">Pathway</th>
      <th align="left">ID</th>
      <th align="left">Gene_count</th>
      <th align="left">p-value</th>
      <th align="left">Genes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="left"><b>MAPK signaling pathway</b></td>
      <td align="left">hsa04010</td>
      <td align="left">93</td>
      <td align="left">0.00390113449114229</td>
      <td align="left">AKT1, CACNA1D, CACNA1H, CACNA2D4, CACNB1, CACNB3, CASP3, CHUK, CSF1, DAXX, DDIT3, DUSP5, DUSP6, DUSP7, DUSP8, ECSIT, EFNA2, ERBB2, FGF23, FGF7, FLT1, FLT3LG, GADD45G, HRAS, HSPA1A, HSPA1B, HSPB1</td>
    </tr>
      <td align="left"><b>Epstein-Barr virus infection</b></td>
      <td align="left">hsa05169</td>
      <td align="left">68</td>
      <td align="left">0.00335694425358938</td>
      <td align="left">ADRM1, AKT1, B2M, BAX, BCL2, BCL2L11, CASP3, CASP8, CCND1, CCND2, CD19, CD3D, CD58, CD4, CHUK, CR2, CXCL10, E2F3, ENTPD1, GADD45G, HES1, HLA-DOB, HLA-DPA1, HLA-DRA, HLA-DRB1, HLA-DRB4, HLA-F, IFNA</td>
    </tr>
      <td align="left"><b>NOD-like receptor signaling pathway</b></td>
      <td align="left">hsa04621</td>
      <td align="left">67</td>
      <td align="left">0.00102996703705523</td>
      <td align="left">AIM2, ANTXR1, ANTXR2, ATG16L1, ATG5, BCL2, BIRC3, CARD16, CARD6, CARD8, CARD9, CASP4, CASP5, CASP8, CASR, CCL2, CHUK, CXCL1, CXCL2, CXCL3, CXCL8, CYBB, DEFA1, GABARAP, GBP1, GBP5, GSDMD, HSP90AB1</td>
    </tr>
      <td align="left"><b>TNF signaling pathway</b></td>
      <td align="left">hsa04668</td>
      <td align="left">46</td>
      <td align="left">0.00193392176389528</td>
      <td align="left">ADAM17, AKT1, ATF6B, BIRC3, CASP10, CASP3, CASP8, CCL2, CHUK, CSF1, CX3CL1, CXCL1, CXCL10, CXCL2, CXCL3, CXCL6, CYLD, DAB2IP, EDN1, IL15, IL1B, IRF1, JUN, JUNB, MAP2K4, MAP2K7, MAP3K5, MAP3K7, MAPK12</td>
    </tr>
      <td align="left"><b>NF-kappa B signaling pathway</b></td>
      <td align="left">hsa04064</td>
      <td align="left">43</td>
      <td align="left">0.00102996703705523</td>
      <td align="left">ATM, BCL2, BCL2A1, BIRC3, CARD10, CHUK, CSNK2B, CXCL1, CXCL2, CXCL3, CXCL8, CYLD, EDA, EDARADD, GADD45G, IL1B, IRAK1, IRAK2, LBP, LTBR, LY96, LYN, MALT1, MAP3K7, NFKB1, NFKB2, PIAS4, PIDD1, PLCG2, PPP1R</td>
    </tr>
      <td align="left"><b>Th17 cell differentiation</b></td>
      <td align="left">hsa04659</td>
      <td align="left">41</td>
      <td align="left">0.00435344378211124</td>
      <td align="left">CD3D, CHUK, GATA3, HIF1A, HLA-DOB, HLA-DPA1, HLA-DRA, HLA-DRB1, HLA-DRB4, HSP90AB1, IFNG, IFNGR1, IL1B, IL1RAP, IL21R, IL2RA, IL2RB, IL2RG, IRF4, JAK2, JUN, MAPK12, MAPK14, MAPK3, MAPK8, MTOR, NFATC2</td>
    </tr>
      <td align="left"><b>AGE-RAGE signaling pathway in diabetic complications</b></td>
      <td align="left">hsa04933</td>
      <td align="left">40</td>
      <td align="left">0.00273426845638295</td>
      <td align="left">AKT1, BAX, BCL2, CASP3, CCL2, CCND1, CDK4, COL4A2, COL4A4, CXCL8, CYBB, EDN1, EGR1, HRAS, IL1B, JAK2, JUN, MAPK12, MAPK14, MAPK3, MAPK8, MMP2, NFKB1, PIK3R2, PIM1, PLCB3, PLCD1, PLCD3, PLCG2, PRKCB</td>
    </tr>
      <td align="left"><b>Rheumatoid arthritis</b></td>
      <td align="left">hsa05323</td>
      <td align="left">37</td>
      <td align="left">0.00335694425358938</td>
      <td align="left">ATP6AP1, ATP6V0C, ATP6V0E1, ATP6V1A, ATP6V1B2, CCL2, CD28, CD86, CSF1, CTLA4, CTSL, CXCL1, CXCL2, CXCL3, CXCL6, CXCL8, FLT1, HLA-DOB, HLA-DPA1, HLA-DRA, HLA-DRB1, HLA-DRB4, IFNG, IL15, IL1B, ITGAL, JUN</td>
    </tr>
      <td align="left"><b>IL-17 signaling pathway</b></td>
      <td align="left">hsa04657</td>
      <td align="left">37</td>
      <td align="left">0.00383832578246515</td>
      <td align="left">CASP3, CASP8, CCL2, CHUK, CXCL1, CXCL10, CXCL2, CXCL3, CXCL6, CXCL8, HSP90AB1, IFNG, IL17RC, IL17RE, IL1B, JUN, JUND, MAP3K7, MAPK12, MAPK14, MAPK15, MAPK3, MAPK7, MAPK8, MMP1, MMP3, MMP9, MUC5B</td>
    </tr>
      <td align="left"><b>Leishmaniasis</b></td>
      <td align="left">hsa05140</td>
      <td align="left">34</td>
      <td align="left">0.00114374802489345</td>
      <td align="left">CR1, CR1L, CYBB, FCGR1A, FCGR2A, FCGR3A, HLA-DOB, HLA-DPA1, HLA-DRA, HLA-DRB1, HLA-DRB4, IFNG, IFNGR1, IL1B, IRAK1, IRAK2, ITGA4, JAK2, JUN, MAP3K7, MAPK12, MAPK14, MAPK3, NFKB1, NFKBIB, PRKCB, PTG</td>
    </tr>
  </tbody>
</table>

<br>

### KEGG Rheumatoid Arthritis pathway (hsa05323)

<p align="center">
  <img width="1492" height="859" alt="Image" src="https://github.com/user-attachments/assets/f9a53300-8888-4aec-b10e-5d0c91c82e57" />
  <br>
</p>
<p align="left">
  <em><b>Figuur 5. </b> De visualisatie van differentieel geëxpresseerde genen binnen de KEGG Rheumatoid Arthritis pathway (hsa05323) toont zowel op- als neerregulatie van verschillende immuun- en weefselgerelateerde genen in patiënten met reumatoïde artritis ten opzichte van de controlegroep. Met name IL1B, TLR4, TNFSF13B (BAFF), IFNG, MMP13 en CTSL vertonen verhoogde expressie en zijn betrokken bij ontstekingssignalen, activatie van het aangeboren en adaptieve immuunsysteem, B-celregulatie en extracellulaire matrixafbraak. Daarnaast zijn ook genen met verlaagde expressie zichtbaar binnen de pathway, wat wijst op een verstoring in de balans van immuunregulatie. Samen suggereert dit een veranderde activiteit binnen de RA-pathway, waarin zowel inflammatoire activatie als processen die bijdragen aan weefselschade een rol lijken te spelen. Zie tabel 4.</em>
</p>

<br>

<table>
  <caption><b>Tabel 4:</b> Overzicht en functies van de belangrijkste differentieel geëxpresseerde genen binnen de RA-pathway</caption>
  
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

<br>

De differentiële expressieanalyse liet een groot aantal genen zien die verschillend tot expressie kwamen tussen de onderzochte groepen. In de volcano plot werden genen met een verandering in expressieniveau en genen met statistische significantie zichtbaar, wat duidt op verschillen tussen de condities.

De GO Biological Process-verrijkingsanalyse liet een oververtegenwoordiging van immuun-gerelateerde processen zien. De meest verrijkte termen waren lymfocytdifferentiatie, adaptieve immuunrespons, lymfocyt-gemedieerde immuniteit, antigeenreceptor-gemedieerde signaaltransductie en B-celactivatie. Deze processen zijn betrokken bij de ontwikkeling, activatie en functie van immuuncellen.

De KEGG pathway-verrijkingsanalyse liet meerdere pathways zien die significant verrijkt waren, waaronder de rheumatoid arthritis pathway, TNF signaling pathway, IL-17 signaling pathway, NF-kappa B signaling pathway en Th17 cell differentiation. Deze pathways zijn betrokken bij ontstekingsreacties, immuuncelactivatie en signaaltransductie.

De visualisatie van de differentieel geëxpresseerde genen binnen de KEGG rheumatoid arthritis pathway (hsa05323) liet zien dat meerdere genen betrokken zijn bij ontsteking en weefselgerelateerde processen. IL1B, TLR4, TNFSF13B, IFNG, MMP13 en CTSL vertoonden verhoogde expressie. Deze genen zijn geassocieerd met ontstekingssignalering, immuunregulatie, B-celactivatie en extracellulaire matrixafbraak.



## 📚Conclusie
<p>
De resultaten van deze analyse laten zien dat de differentieel geëxpresseerde genen voornamelijk betrokken zijn bij immuunactivatie en ontstekingsprocessen. De volcano plot liet zien dat een groot aantal genen verschillend tot expressie kwam tussen de onderzochte groepen, waarbij meerdere genen zowel een duidelijke verandering in expressieniveau als statistische significantie vertoonden <strong>[Figuur 2]</strong>.
</p>

<p>
Daarnaast liet de GO-verrijkingsanalyse een oververtegenwoordiging zien van processen zoals lymfocytdifferentiatie, adaptieve immuunrespons, lymfocyt-gemedieerde immuniteit, antigeenreceptor-gemedieerde signaaltransductie en B-celactivatie <strong>[Figuur 3]</strong>. Ook de KEGG-analyse toonde verrijking van verschillende immuun- en ontstekingsgerelateerde pathways, waaronder de TNF signaling pathway, NF-kappa B signaling pathway, IL-17 signaling pathway, Th17 cell differentiation en de rheumatoid arthritis pathway <strong>[Figuur 4]</strong>.
</p>

<p>
De visualisatie van de rheumatoid arthritis pathway liet daarnaast zien dat genen zoals IL1B, TLR4, TNFSF13B, IFNG, MMP13 en CTSL verhoogd tot expressie kwamen <strong>[Figuur 5]</strong>. Deze genen zijn betrokken bij ontstekingssignalering, immuunregulatie, B-celactivatie en extracellulaire matrixafbraak. Vergelijkbare immuun- en ontstekingsgerelateerde patronen zijn eerder beschreven in transcriptomische studies naar reumatoïde artritis (Liu et al., 2023; Wang et al., 2022). De gevonden expressiepatronen en verrijkte pathways komen daarmee overeen met moleculaire processen die in de literatuur worden geassocieerd met reumatoïde artritis.
</p>

## 🤖AI Disclaimer

AI-tools zoals ChatGPT en Perplexity zijn gebruikt ter ondersteuning bij het zoeken van wetenschapelijke artikelen, het schrijven van teksten, het structureren van resultaten, en het opzetten van de GitHub-pagina, inclusief het verwerken en formatteren van externe bronnen. Alle analyses, interpretaties en eindinhoud zijn door de auteur/student gecontroleerd.

## 📚Bronnen
<p>
Gabriel, S. E. (2001). <i>The epidemiology of rheumatoid arthritis</i>. 
Rheumatic Disease Clinics of North America, 27(2), 269–281. 
<a href="https://doi.org/10.1016/S0889-857X(05)70201-5" target="_blank">https://doi.org/10.1016/S0889-857X(05)70201-5</a>
</p>

<p>
Liu, F., Huang, Y., Liu, F., & Wang, H. (2023). <i>Identification of immune-related genes in diagnosing atherosclerosis with rheumatoid arthritis through bioinformatics analysis and machine learning</i>. 
Frontiers in Immunology, 14, 1126647. 
<a href="https://doi.org/10.3389/fimmu.2023.1126647" target="_blank">https://doi.org/10.3389/fimmu.2023.1126647</a>
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

<p>
Wang, Y., et al. (2022). <i>Bioinformatics analysis of rheumatoid arthritis-related genes and signaling pathways</i>. 
Experimental and Therapeutic Medicine. 
<a href="https://doi.org/10.3892/etm.2022.11295" target="_blank">https://doi.org/10.3892/etm.2022.11295</a>
</p>

## 🌐URL's
- https://github.com/YuLab-SMU/biomedical-knowledge-mining-book
- https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#headings

