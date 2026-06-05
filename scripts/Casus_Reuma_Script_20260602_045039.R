# PROJECT TRANSCRIPTOMICS WERKCOLLEGE
#     LOCATIE BESTANDEN (Macbook)----
  list.files("~/Library/CloudStorage/OneDrive-Firda(voorheenFC)/00_J2P4_2025_2026/Project Transcriptomics/Casus_Reuma")
  setwd("~/Library/CloudStorage/OneDrive-Firda(voorheenFC)/00_J2P4_2025_2026/Project Transcriptomics/Casus_Reuma")
  files <- list.files("~/Library/CloudStorage/OneDrive-Firda(voorheenFC)/00_J2P4_2025_2026/Project Transcriptomics/Casus_Reuma")

#     LOCATIE BESTANDEN (Windows)----
  list.files("C:\\Users\\Gebruiker\\OneDrive - NHL Stenden\\00_J2P4_2025_2026\\Project Transcriptomics\\Casus_Reuma")
  setwd("C:\\Users\\Gebruiker\\OneDrive - NHL Stenden\\00_J2P4_2025_2026\\Project Transcriptomics\\Casus_Reuma")
  files <- list.files("C:\\Users\\Gebruiker\\OneDrive - NHL Stenden\\00_J2P5_2025_2026\\Project Transcriptomics\\Casus_Reuma")
  getwd() # Working direction

# Stap 1 — Packages BioCManager----
  
  BiocManager::install('Rsubread')
    browseVignettes("Rsubread")
  BiocManager::install('Rsamtools')
  BiocManager::install("DESeq2")
  BiocManager::install("KEGGREST")
  BiocManager::install("EnhancedVolcano")
  BiocManager::install("pathview")
  BiocManager::install("clusterProfiler")
  BiocManager::install("org.Hs.eg.db")
  BiocManager::install("enrichplot")
  BiocManager::install("viridis")
  BiocManager::install("ggplot2")
  BiocManager::install("dada2")
  BiocManager::install("dplyr")
  
  library(Rsubread)
  library(BiocManager)
  library(Rsubread)
  library(Rsamtools)
  library(DESeq2)
  library(KEGGREST)
  library(EnhancedVolcano)
  library(pathview)
  library(clusterProfiler)
  library(org.Hs.eg.db)
  library(enrichplot)
  library(viridis)
  library(ggplot2)
  library(dada2)
  library(dplyr)

# Stap 2 — Indexeren----
  buildindex(
    basename = 'Casus_RA',
    reference = 'GCF_000001405.40_GRCh38.p14_genomic.fna',
    memory = 4000,
    indexSplit = TRUE
)

# Stap 3 — Mapping----
  align.Fem_31_1_Norm_CRA <- align(index = "Casus_RA", readfile1 = "SRR4785819_1_subset40k.fastq", readfile2 = "SRR4785819_2_subset40k.fastq", output_file = "Fem_31_1_Norm_CRA.BAM")
  align.Fem_15_1_Norm_CRA <- align(index = "Casus_RA", readfile1 = "SRR4785820_1_subset40k.fastq", readfile2 = "SRR4785820_2_subset40k.fastq", output_file = "Fem_15_1_Norm_CRA.BAM")
  align.Fem_31_2_Norm_CRA <- align(index = "Casus_RA", readfile1 = "SRR4785828_1_subset40k.fastq", readfile2 = "SRR4785828_2_subset40k.fastq", output_file = "Fem_31_2_Norm_CRA.BAM")
  align.Fem_42_1_Norm_CRA <- align(index = "Casus_RA", readfile1 = "SRR4785831_1_subset40k.fastq", readfile2 = "SRR4785831_2_subset40k.fastq", output_file = "Fem_42_1_Norm_CRA.BAM")
  align.Fem_54_1_RA_CRA   <- align(index = "Casus_RA", readfile1 = "SRR4785979_1_subset40k.fastq", readfile2 = "SRR4785979_2_subset40k.fastq", output_file = "Fem_54_1_RA_CRA.BAM")
  align.Fem_66_1_RA_CRA   <- align(index = "Casus_RA", readfile1 = "SRR4785980_1_subset40k.fastq", readfile2 = "SRR4785980_2_subset40k.fastq", output_file = "Fem_66_1_RA_CRA.BAM")
  align.Fem_60_1_RA_CRA   <- align(index = "Casus_RA", readfile1 = "SRR4785986_1_subset40k.fastq", readfile2 = "SRR4785986_2_subset40k.fastq", output_file = "Fem_60_1_RA_CRA.BAM")
  align.Fem_59_1_RA_CRA   <- align(index = "Casus_RA", readfile1 = "SRR4785988_1_subset40k.fastq", readfile2 = "SRR4785988_2_subset40k.fastq", output_file = "Fem_59_1_RA_CRA.BAM")
  
  
# Stap 4 — Gemapte reads visualiseren----
  # Bestandnamen van de monsters
    samples_CRA <- c('Fem_31_1_Norm_CRA', 'Fem_15_1_Norm_CRA', 'Fem_31_2_Norm_CRA', 'Fem_42_1_Norm_CRA', 
                    'Fem_54_1_RA_CRA', 'Fem_66_1_RA_CRA', 'Fem_60_1_RA_CRA', 'Fem_59_1_RA_CRA')
    
# Stap 5 — Voor elk monster: sorteer en indexeer de BAM-file----
  # Sorteer BAM-bestanden
    lapply(samples_CRA, function(s) {sortBam(file = paste0(s, '.BAM'), destination = paste0(s, '.sorted'))
    })
  
# Stap 6 — Indexeer de gesorteerde BAM-file----
    lapply(samples_CRA, function(s) {indexBam(file = paste0(s, '.sorted.bam'))
    })
  
# Stap 7 — Count matrix voor alle samples----
  allsamples_Casus_CRA <- c("Fem_31_1_Norm_CRA.BAM", "Fem_15_1_Norm_CRA.BAM", "Fem_31_2_Norm_CRA.BAM", "Fem_42_1_Norm_CRA.BAM", 
                           "Fem_54_1_RA_CRA.BAM", "Fem_66_1_RA_CRA.BAM", "Fem_60_1_RA_CRA.BAM", "Fem_59_1_RA_CRA.BAM")
  
# Stap 8 — Count matrix alle samples----  
  count_matrix_CRA <- featureCounts(
    files = allsamples_Casus_CRA,
    annot.ext = "genomic.gtf",
    isPairedEnd = TRUE,
    isGTFAnnotationFile = TRUE, 
    GTF.attrType = "gene_id",
    useMetaFeatures = TRUE
  )
  
# Stap 9 — Count matrix bekijken en opslaan----
  str(count_matrix_CRA)
    head(count_matrix_CRA$counts)
  counts <- count_matrix_CRA$counts
    colnames(counts) <- c("Fem_31_1_Norm_CRA", "Fem_15_1_Norm_CRA", "Fem_31_2_Norm_CRA", "Fem_42_1_Norm_CRA", 
                          "Fem_54_1_RA_CRA", "Fem_66_1_RA_CRA", "Fem_60_1_RA_CRA", "Fem_59_1_RA_CRA")
      head(counts)
  
  write.csv(counts, "Casus_RA_countmatrix.csv")
  
# Stap 10 — Count matrix inladen --> Zie op Blackboard----
  counts <- read.csv("Casus_RA_countmatrix.csv", row.names = 1) # <--- Dit was een check voordat de volledige dataset werd ingeladen
  
      count_matrix <- read.table(
        "count_matrix_RA_2.txt", # <--- Dit is de volledige dataset gebruiky voor de analyse
        header = TRUE,
        row.names = 1,
        check.names = FALSE
        )
 
  colnames(count_matrix) <- c("Fem_31_1_Norm_CRA", "Fem_15_1_Norm_CRA", "Fem_31_2_Norm_CRA", "Fem_42_1_Norm_CRA", 
                              "Fem_54_1_RA_CRA", "Fem_66_1_RA_CRA", "Fem_60_1_RA_CRA", "Fem_59_1_RA_CRA")
  
# Stap 11 — Metadata----
  treatment <- c("NORM", "NORM", "NORM", "NORM", "RA", "RA", "RA", "RA")
    treatment_table <- data.frame(treatment)
    rownames(treatment_table) <- c("Fem_31_1_Norm_CRA", "Fem_15_1_Norm_CRA", "Fem_31_2_Norm_CRA", "Fem_42_1_Norm_CRA", 
                                   "Fem_54_1_RA_CRA", "Fem_66_1_RA_CRA", "Fem_60_1_RA_CRA", "Fem_59_1_RA_CRA")
  head(treatment_table, n = 8)

# Stap 12 — Maak DESeqDataSet aan----
  dds <- DESeqDataSetFromMatrix(countData = count_matrix,
                                colData = treatment_table,
                                design = ~ treatment)  

# Stap 13 — Voer analyse uit----
  dds <- DESeq(dds)
    resultaten <- results(dds)
  
        head(resultaten)

  sum(resultaten$padj < 0.05 & resultaten$log2FoldChange > 1, na.rm = TRUE)
  sum(resultaten$padj < 0.05 & resultaten$log2FoldChange < -1, na.rm = TRUE)
  
    hoogste_fold_change <- resultaten[order(resultaten$log2FoldChange, decreasing = TRUE), ]
    laagste_fold_change <- resultaten[order(resultaten$log2FoldChange, decreasing = FALSE), ]
    laagste_p_waarde <- resultaten[order(resultaten$padj, decreasing = FALSE), ]
    
# Stap 14 — Visualisatie: volcano plot----
  EnhancedVolcano(resultaten,
                  lab = rownames(resultaten),
                  x = 'log2FoldChange',
                  y = 'padj')
  
        dev.copy(png, 'Volcanoplot_RA_2.png', 
                 width = 8,
                 height = 10,
                 units = 'in',
                 res = 500)
        dev.off()  
 
# GO-analyse-----------------------------------------------------------------------------------------------------
# Stap 1 — Significante genen selecteren----
  # Checken hoeveel NA
    sum(is.na(resultaten$padj))
    sum(is.na(resultaten$log2FoldChange))
    
      background_genes <- rownames(resultaten)
      background_genes <- sub("\\..*", "", background_genes)

# Stap 2 — DESeq2 analyse low-count genes wegfilteren----  
    keep <- rowSums(count_matrix >= 10) >= 2
    count_matrix_filtered <- count_matrix[keep, ]
  
      dds <- DESeqDataSetFromMatrix(
        countData = count_matrix_filtered,
        colData = treatment_table,
        design = ~ treatment
      )
  
          dds <- DESeq(dds)
          resultaten <- results(dds)

# Stap 3 — Significante genen selecteren----  
    sig_genes <- resultaten[
      !is.na(resultaten$padj) &
        !is.na(resultaten$log2FoldChange) &
        resultaten$padj < 0.05 &
        abs(resultaten$log2FoldChange) > 1,
    ]
    
        nrow(sig_genes)
        gene_ids <- rownames(sig_genes)
          head(gene_ids)
    
  
# Stap 4 — ENSEMBL → ENTREZ converteren----
    gene_conversion <- bitr(
      gene_ids,
      fromType = "SYMBOL",
      toType = "ENTREZID",
      OrgDb = org.Hs.eg.db
    )
    
        head(gene_conversion)
        nrow(gene_conversion)
      
# Stap 5 — Enrichment----
      bg_entrez <- bitr(
        background_genes,
        fromType = "SYMBOL",
        toType = "ENTREZID",
        OrgDb = org.Hs.eg.db
      )$ENTREZID
      
           go_bp <- enrichGO(
            gene = gene_conversion$ENTREZID,
            OrgDb = org.Hs.eg.db,
            keyType = "ENTREZID",
            ont = "BP",
            universe = bg_entrez,
            pAdjustMethod = "BH",
            pvalueCutoff = 0.05,
            readable = TRUE
          )
           
# Stap 6 — Vermindering van redundantie----
      go_bp <- simplify(go_bp, cutoff = 0.7, by = "p.adjust", select_fun = min)
      
# Stap 7 — Dotplot----
      dotplot(go_bp, showCategory = 10, color = "p.adjust") +
        scale_color_viridis_c(option = "D") +
        theme_minimal() +
        labs(
          title = "GO Biological Process Enrichment Analysis",
          size = "Gene count",
        ) +
        theme(plot.title = element_text(hjust = 0.5))
      
# Stap 8 — Barplot----
      barplot(go_bp, showCategory = 10, color = "p.adjust") +
        scale_color_viridis_c(option = "D") +
        theme_minimal() +
        labs(
          title = "GO Biological Process Enrichment Analysis",
        ) +
        theme(plot.title = element_text(hjust = 0.5))
            
# KEGG-Analyse-----------------------------------------------------------------------------------------------------
# Stap 1 — Enrichment----      
      kegg <- enrichKEGG(
        gene = gene_conversion$ENTREZID,
        organism = "hsa",
        universe = bg_entrez,
        pAdjustMethod = "BH",
        pvalueCutoff = 0.05
      )
      
      kegg <- setReadable(kegg, OrgDb = org.Hs.eg.db, keyType = "ENTREZID")
      
      head(kegg)
      as.data.frame(kegg)[, c("ID", "Description", "p.adjust", "Count")]
      
# Stap 2 — Vermindering van redundantie----     
      kegg <- simplify(kegg, cutoff = 0.7, by = "p.adjust", select_fun = min)
      
# Stap 3 — Dotplot----
      dotplot(kegg, showCategory = 10, color = "p.adjust") +
        scale_color_viridis_c(option = "D") +
        theme_minimal() +
        labs(
          title = "KEGG Pathway Enrichment Analysis",
          size = "Gene count",
        ) +
        theme(plot.title = element_text(hjust = 0.5))
      
# Stap 4 — Barplot----
      barplot(kegg, showCategory = 10, color = "p.adjust") +
        scale_color_viridis_c(option = "D") +
        theme_minimal() +
        labs(
          title = "KEGG Pathway Enrichment Analysis",
        ) +
        theme(plot.title = element_text(hjust = 0.5))
      
 
# Pathview-----------------------------------------------------------------------------------------------------      
# Stap 1 — Zet de DESeq2 resultaten om naar een dataframe en maak van de rijnamen een echte 'SYMBOL' kolom----
      res_df <- as.data.frame(resultaten)
      res_df$SYMBOL <- rownames(res_df)
      
# Stap 2 — Koppelen van gennamen aan de expressiedata----
      merged_data <- merge(gene_conversion, res_df, by = "SYMBOL")
      
# Stap 3 — Maken van numerieke vector met log2FoldChange waarden----
      gene_list <- merged_data$log2FoldChange
      
# Stap 4 — Waarden bij de behorende Entrez ID's als naam----
      names(gene_list) <- merged_data$ENTREZID
      
# Stap 5 —  Run Pathview met de gevulde vector----
    # Pathway = Rheumatoid arthritis, ID = hsa05323----
      library(pathview)
      pathview(
        gene.data = gene_list,
        pathway.id = "hsa05323",
        species = "hsa",
        limit = list(gene = c(-3, 3)) # Schaal van -3 (groen/down) tot +3 (rood/up)
      )
      
    # Pathway = TNF signaling pathway, ID = hsa04668----
      library(pathview)
      pathview(
        gene.data = gene_list,
        pathway.id = "hsa04668",
        species = "hsa",
        limit = list(gene = c(-3, 3)) # Schaal van -3 (groen/down) tot +3 (rood/up)
      )
      
      
          
  