# By Naser Elmi

library(TCGAbiolinks)
library(biomartr)
library(biomaRt)
library(bnlearn)

####### Part I (Preprocessing)
Some useful commands for downloading TCGA data

# Download the data using TCGABiolinks package. Note that you should look at
# TCGA webpage: https://portal.gdc.cancer.gov/ and select an appropriate dataset.
# For example, a Colon Cancer dataset with the name TCGA-COAD is selected in this sample code.

query <- GDCquery(project = "TCGA-COAD",
                  data.category = "Transcriptome Profiling",
                  data.type = "Gene Expression Quantification", 
                  workflow.type = "HTSeq - FPKM-UQ")

GDCdownload(query)
data <- GDCprepare(query)

# View your data in R
datatable(as.data.frame(colData(data)), 
          options = list(scrollX = TRUE, keys = TRUE, pageLength = 5), 
          rownames = FALSE)
datatable(assay(data)[1:100,], 
          options = list(scrollX = TRUE, keys = TRUE, pageLength = 5), 
          rownames = TRUE)


# use Biomart to convert ensemble gene id to hgnc gene symbol
ensembl = useMart(biomart="ensembl",host="www.ensembl.org",dataset="hsapiens_gene_ensembl")
gene_symbol <- getBM(attributes=c('ensembl_gene_id','hgnc_symbol'), filters =
                       'ensembl_gene_id', values =rownames(Your Selected sorted data), mart = ensembl)



####### Part II, Bayesian Network
Some commands for learning and inference of Bayesian networks

# learning Baysian network with hill-climbing
you may use hc command

# Compute the BIC score of your learned BN
# you may use bnlearn::score with type = "bic"

# checking the strength of links
# you may use arc.strength(learned, data = colondata, criterion = "bic")

# cheking d-sep and existance of a path
you may use dsep and bnlearn::path

#learning parameters using MLE
you may use bn.fit with method = "mle"

# checking the strength of links using bootstrapping
# you may use use arc.strength, bn.boot, boot.strength

# query example:
# P(stage==IV,gene==high|gender=male)
# cpquery(bn.mle, event = (tumor_stage == "stage iv") & (gene == "high"),evidence = (gender == "female"))
