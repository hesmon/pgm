# by Fahimeh Palizban & Hesam Montazeri
rm(list=ls())
library(bnlearn)

wnt_signal = read.csv(file = 'HW4train.csv',header = TRUE,na= "unknown")
test_data  = read.csv(file = 'HW4test.csv',header = TRUE,na= "unknown")


DAG<-model2network("[sample.type][KRAS|sample.type][APC][GSK3A][FZD3|KRAS][LRP6|KRAS][AXIN1|GSK3A:FZD3:LRP6][CTNNB1|APC:AXIN1][TCF3|CTNNB1]")
g <- graphviz.plot(DAG, layout="neato", highlight=list(nodes=names(DAG$nodes) ,fill="lightgreen", col="black") )


# Use the cpquery with the following arguments to compute probability queries
# sample query P(sample.type == "NT" given gene expression data) for observation number 12
obs_nr = 12
cpquery(fit, event =(sample.type == "NT") ,  
            evidence = as.list(test_data[obs_nr, ] ) , method = "lw", n=100000)    
