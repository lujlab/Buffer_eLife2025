#### table1 ####
## uORF significant TE
setwd("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/Table1/")
myfiles2<-list.files(path = "~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/Table1/",pattern = "Gamma.rpkm0.1.3.csv") 
gamma_name<-gsub("_Gamma.+","",myfiles2)
mydtt<-setNames(data.frame(matrix(ncol = 8, nrow = 10),row.names=gamma_name),
                c("Total_beta","Beta!=1",
                  "Beta>1","Beta>1 & Gamma>1","Beta>1 & Gamma<1",
                  "Beta<1","Beta<1 & Gamma>1","Beta<1 & Gamma<1"))

for (i in 1:length(myfiles2)) {
  hh<-fread(myfiles2[i])
  nrow(hh)->mydtt[i,1]
  nrow(hh[adj_P_log2Beta_uorf<=0.05])->mydtt[i,2]
  nrow(hh[adj_P_log2Beta_uorf<=0.05&log2Beta_uorf>0])->mydtt[i,3]
  nrow(hh[adj_P_log2Beta_uorf<=0.05&log2Beta_uorf>0&adj_P_log2Gamma<=0.05&log2Gamma>0])->mydtt[i,4]
  nrow(hh[adj_P_log2Beta_uorf<=0.05&log2Beta_uorf>0&adj_P_log2Gamma<=0.05&log2Gamma<0])->mydtt[i,5]
  nrow(hh[adj_P_log2Beta_uorf<=0.05&log2Beta_uorf<0])->mydtt[i,6]
  nrow(hh[adj_P_log2Beta_uorf<=0.05&log2Beta_uorf<0&adj_P_log2Gamma<=0.05&log2Gamma>0])->mydtt[i,7]
  nrow(hh[adj_P_log2Beta_uorf<=0.05&log2Beta_uorf<0&adj_P_log2Gamma<=0.05&log2Gamma<0])->mydtt[i,8]
  
}

## CDS significant TE
setwd("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/Table1/")
cano_tr<-fread("./log.canon.dm6.txt")
myfiles<-list.files(pattern = "Beta.rpkm0.1.3.csv")
files_name<-gsub(".rpkm0.1.3.csv","",myfiles)
mystages<-gsub("_Beta.rpkm0.1.3.csv","",myfiles)
mystages_order<-c("em02","em26","em612","em1224","larva","pupa","fem","FH","mal","MH")

mydtt<-data.frame(matrix(1:20,ncol=2),row.names = mystages)
colnames(mydtt)<-c("total","beta_cds != 1")

for (i in 1:length(myfiles)) {
  x<-fread(myfiles[i],header = T,stringsAsFactors = F)
  assign(files_name[i],x)
  x[grep("_",id,invert = T)]->x
  merge(x,cano_tr,by.x="id",by.y="transcriptId")->x
  nrow(x)->mydtt[i,1]
  nrow(x[adj_P_log2Beta<=0.05])->mydtt[i,2]
}


