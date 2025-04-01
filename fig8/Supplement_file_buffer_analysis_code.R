

### data: get uORF counts and TE ----

library(data.table)
dmel_uORF_count <- readRDS("dmel_uORF_count_new.rds")
dsim_uORF_count <- readRDS("dsim_uORF_count_new.rds")
length(intersect(dmel_uORF_count$uorf_id,dsim_uORF_count$uorf_id))
# canon
dm6_canon <- fread("dmel-all-r6.04.canonical.transcripts.txt",data.table=F,header=F)
colnames(dm6_canon) <- c("geneName","geneID","FBtr","len")
#
libsize_dmel_mRNA <- c(49.1173,48.5653,41.649,46.5339,40.2412,38.1345,27.1363,21.53617,15.6932,12.9308)
libsize_dmel_ribo <- c(46.9474,28.6152,40.2204,42.2151,13.0192,16.4534,29.9659,38.3385,37.6599,22.284)
libsize_dsim_mRNA <- c(16.6516,6.59558,16.6371,12.2525,11.4046,17.1174,13.1018,15.1611,13.5503,14.4799)
libsize_dsim_ribo <- c(39.6253,29.4347,35.7672,29.2805,30.5968,35.3773,10.7239,16.044,22.6448,25.9797)
names(libsize_dmel_mRNA) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
names(libsize_dmel_ribo) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
names(libsize_dsim_mRNA) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
names(libsize_dsim_ribo) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")

for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  dmel_uORF_count[,paste0("dmel_",k,"_mRNA_rpkm")] <- 1e3*dmel_uORF_count[,paste0("dmel_",k,"_mRNA")]/dmel_uORF_count$dmel_len_nocds/libsize_dmel_mRNA[k]
  dmel_uORF_count[,paste0("dmel_",k,"_Ribo_rpkm")] <- 1e3*dmel_uORF_count[,paste0("dmel_",k,"_Ribo")]/dmel_uORF_count$dmel_len_nocds/libsize_dmel_ribo[k]
  dmel_uORF_count[,paste0("dmel_",k,"_TE")] <- dmel_uORF_count[,paste0("dmel_",k,"_Ribo_rpkm")]/(dmel_uORF_count[,paste0("dmel_",k,"_mRNA_rpkm")]+0.1)
  dsim_uORF_count[,paste0("dsim_",k,"_mRNA_rpkm")] <- 1e3*dsim_uORF_count[,paste0("dsim_",k,"_mRNA")]/dsim_uORF_count$dsim_len/libsize_dsim_mRNA[k]
  dsim_uORF_count[,paste0("dsim_",k,"_Ribo_rpkm")] <- 1e3*dsim_uORF_count[,paste0("dsim_",k,"_Ribo")]/dsim_uORF_count$dsim_len/libsize_dsim_ribo[k]
  dsim_uORF_count[,paste0("dsim_",k,"_TE")] <- dsim_uORF_count[,paste0("dsim_",k,"_Ribo_rpkm")]/(dsim_uORF_count[,paste0("dsim_",k,"_mRNA_rpkm")]+0.1)
}
# add 0.1 pseudocount: when 0/0, avoid (0+0.1)/(0+0.1)=1, let 0/(0+0.1)=0

# add TE to uORF anno
uORF_matrix_27species <- readRDS("uORF_matrix_27species_new.rds")
uORF_matrix_27species$uA_pos_withgap <- as.numeric(gsub("FBtr[0-9]+_|\\(.*","",uORF_matrix_27species$uorf_align))+1
uORF_matrix_27species$uA_pos_withgap <- paste(uORF_matrix_27species$transcriptID,uORF_matrix_27species$uA_pos_withgap,sep="_")
uORF_matrix_27species_TE <- merge(uORF_matrix_27species,dmel_uORF_count,by="uorf_id",all.x=T,sort=F)
uORF_matrix_27species_TE <- merge(uORF_matrix_27species_TE,dsim_uORF_count[,colnames(dsim_uORF_count)!="uorf_id"],by="uA_pos_withgap",all.x=T,sort=F)
uORF_matrix_27species_TE <- uORF_matrix_27species_TE[order(uORF_matrix_27species_TE$transcriptID,uORF_matrix_27species_TE$position_withoutgap),]
uORF_matrix_27species_TE[is.na(uORF_matrix_27species_TE)] <- 0
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  uORF_matrix_27species_TE[,paste0(k,"_log2mRNA_FC")] <- log2((uORF_matrix_27species_TE[,paste0("dsim_",k,"_mRNA_rpkm")]+0.1)/(uORF_matrix_27species_TE[,paste0("dmel_",k,"_mRNA_rpkm")]+0.1))
  uORF_matrix_27species_TE[,paste0(k,"_log2Ribo_FC")] <- log2((uORF_matrix_27species_TE[,paste0("dsim_",k,"_Ribo_rpkm")]+0.1)/(uORF_matrix_27species_TE[,paste0("dmel_",k,"_Ribo_rpkm")]+0.1))
  uORF_matrix_27species_TE[,paste0(k,"_log2TE_FC")] <- log2((uORF_matrix_27species_TE[,paste0("dsim_",k,"_TE")]+0.1)/(uORF_matrix_27species_TE[,paste0("dmel_",k,"_TE")]+0.1))
  uORF_matrix_27species_TE[,paste0(k,"_log2mRNA_FC")][uORF_matrix_27species_TE[,paste0("dsim_",k,"_mRNA_rpkm")]==0 & uORF_matrix_27species_TE[,paste0("dmel_",k,"_mRNA_rpkm")]==0] <- 0
  uORF_matrix_27species_TE[,paste0(k,"_log2Ribo_FC")][uORF_matrix_27species_TE[,paste0("dsim_",k,"_Ribo_rpkm")]==0 & uORF_matrix_27species_TE[,paste0("dmel_",k,"_Ribo_rpkm")]==0] <- 0
  uORF_matrix_27species_TE[,paste0(k,"_log2TE_FC")][uORF_matrix_27species_TE[,paste0("dsim_",k,"_TE")]==0 & uORF_matrix_27species_TE[,paste0("dmel_",k,"_TE")]==0] <- 0
}
# BLS
bls <- fread("uORF_matrix_triCas2_ATG_updata_BLS.txt",data.table=F,header=T)
tmp <- merge(uORF_matrix_27species_TE,bls,by="uorf_align",sort=F)
# saveRDS(tmp,file="uORF_matrix_27species_TE_new.rds",version=2)


#

uORF_matrix_27species_TE <- readRDS("uORF_matrix_27species_TE_new.rds")

list_uorf <- as.list(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"))
names(list_uorf) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  list_uorf[[i]] <- uORF_matrix_27species_TE[uORF_matrix_27species_TE[[paste0("dmel_",k,"_mRNA_rpkm")]]>0.1 & uORF_matrix_27species_TE[[paste0("dsim_",k,"_mRNA_rpkm")]]>0.1 & uORF_matrix_27species_TE$dm6==1 & uORF_matrix_27species_TE$ASM438218v1==1,c("uorf_id","uorf_align",paste0("dmel_",k,"_mRNA"),paste0("dmel_",k,"_Ribo"),paste0("dsim_",k,"_mRNA"),paste0("dsim_",k,"_Ribo"))]
}
# saveRDS(list_uorf,file="list_uorf_rpkm0.1.rds",version=2)


### data: get CDS counts and TE, correlation of mRNA or Ribo between two species ----

#
library(data.table)
dmel_CDS_count <- readRDS("dmel_CDS_count_new.rds")
dsim_CDS_count <- readRDS("dsim_CDS_count_new.rds")
libsize_dmel_mRNA <- c(49.1173,48.5653,41.649,46.5339,40.2412,38.1345,27.1363,21.53617,15.6932,12.9308)
libsize_dmel_ribo <- c(46.9474,28.6152,40.2204,42.2151,13.0192,16.4534,29.9659,38.3385,37.6599,22.284)
libsize_dsim_mRNA <- c(16.6516,6.59558,16.6371,12.2525,11.4046,17.1174,13.1018,15.1611,13.5503,14.4799)
libsize_dsim_ribo <- c(39.6253,29.4347,35.7672,29.2805,30.5968,35.3773,10.7239,16.044,22.6448,25.9797)
names(libsize_dmel_mRNA) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
names(libsize_dmel_ribo) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
names(libsize_dsim_mRNA) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
names(libsize_dsim_ribo) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
#
# merge mRNA
temp_mRNA_merge <- merge(dmel_CDS_count[,grep("FBtr|geneID|dmel_CDS_len|_mRNA",colnames(dmel_CDS_count))],
                         dsim_CDS_count[,grep("FBtr|dsim_CDS_len|_mRNA",colnames(dsim_CDS_count))],by="FBtr",all.x=T,sort=F)
temp_mRNA_merge[is.na(temp_mRNA_merge)] <- 0
# mRNA-FC & pvalue
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  N1 <- libsize_dmel_mRNA[i]*1e6;N2 <- libsize_dsim_mRNA[i]*1e6
  temp_mRNA_merge[[paste0("dmel_",k,"_CDS_mRNA_rpkm")]] <- temp_mRNA_merge[[paste0("dmel_",k,"_CDS_mRNA")]]*1e9/temp_mRNA_merge$dmel_CDS_len/N1
  temp_mRNA_merge[[paste0("dsim_",k,"_CDS_mRNA_rpkm")]] <- temp_mRNA_merge[[paste0("dsim_",k,"_CDS_mRNA")]]*1e9/temp_mRNA_merge$dsim_CDS_len/N2
  temp_mRNA_merge[[paste0(k,"_log2mRNA_FC")]] <- apply(temp_mRNA_merge[,c(paste0("dmel_",k,"_CDS_mRNA_rpkm"),paste0("dsim_",k,"_CDS_mRNA_rpkm"))],1,function(m){
    log2((m[2]+0.01)/(m[1]+0.01))
  })
  temp_mRNA_merge[[paste0(k,"_mRNA_pvalue")]] <- apply(temp_mRNA_merge[,c(paste0("dmel_",k,"_CDS_mRNA"),paste0("dsim_",k,"_CDS_mRNA"))],1,function(m){
    x <- m[1]+1;y <- m[2]+1
    log10p1 <- log10(N2/N1)*y
    log10p2 <- sum(log10((x+1):(x+y)/(1:y)))
    log10p3 <- log10(1+N2/N1)*(x+y+1)
    log10p <- log10p1+log10p2-log10p3
    p <- 10^log10p
  })
  temp_mRNA_merge[[paste0(k,"_mRNA_padj")]] <- p.adjust(temp_mRNA_merge[[paste0(k,"_mRNA_pvalue")]],method="fdr")
}
temp_mRNA_merge[is.na(temp_mRNA_merge)] <- 0
# when calculating FC, 0/0 means unchanged, so needs to be (0+0.1)/(0+0.1)=1

# merge ribo
temp_ribo_merge <- merge(dmel_CDS_count[,grep("FBtr|geneID|dmel_CDS_len|_Ribo",colnames(dmel_CDS_count))],
                         dsim_CDS_count[,grep("FBtr|dsim_CDS_len|_Ribo",colnames(dsim_CDS_count))],by="FBtr",all.x=T,sort=F)
temp_ribo_merge[is.na(temp_ribo_merge)] <- 0
# ribo-FC & pvalue
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  N1 <- libsize_dmel_ribo[i]*1e6;N2 <- libsize_dsim_ribo[i]*1e6
  temp_ribo_merge[[paste0("dmel_",k,"_CDS_Ribo_rpkm")]] <- temp_ribo_merge[[paste0("dmel_",k,"_CDS_Ribo")]]*1e9/temp_mRNA_merge$dmel_CDS_len/N1
  temp_ribo_merge[[paste0("dsim_",k,"_CDS_Ribo_rpkm")]] <- temp_ribo_merge[[paste0("dsim_",k,"_CDS_Ribo")]]*1e9/temp_mRNA_merge$dsim_CDS_len/N2
  temp_ribo_merge[[paste0(k,"_log2Ribo_FC")]] <- apply(temp_ribo_merge[,c(paste0("dmel_",k,"_CDS_Ribo_rpkm"),paste0("dsim_",k,"_CDS_Ribo_rpkm"))],1,function(m){
    log2((m[2]+1)/(m[1]+1))
  })
  temp_ribo_merge[[paste0(k,"_Ribo_pvalue")]] <- apply(temp_ribo_merge[,c(paste0("dmel_",k,"_CDS_Ribo"),paste0("dsim_",k,"_CDS_Ribo"))],1,function(m){
    x <- m[1]+1;y <- m[2]+1
    log10p1 <- log10(N2/N1)*y
    log10p2 <- sum(log10((x+1):(x+y)/(1:y)))
    log10p3 <- log10(1+N2/N1)*(x+y+1)
    log10p <- log10p1+log10p2-log10p3
    p <- 10^log10p
  })
  temp_ribo_merge[[paste0(k,"_Ribo_padj")]] <- p.adjust(temp_ribo_merge[[paste0(k,"_Ribo_pvalue")]],method="fdr")
}
temp_ribo_merge[is.na(temp_ribo_merge)] <- 0
#
temp_mRNA_ribo_merge <- merge(temp_mRNA_merge,temp_ribo_merge[,!(colnames(temp_ribo_merge) %in% c("geneID","dmel_CDS_len","dsim_CDS_len"))],by="FBtr")
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  temp_mRNA_ribo_merge[[paste0("dmel_",k,"_TE")]] <- (temp_mRNA_ribo_merge[[paste0("dmel_",k,"_CDS_Ribo_rpkm")]]+0.01)/(temp_mRNA_ribo_merge[[paste0("dmel_",k,"_CDS_mRNA_rpkm")]]+0.01)
  temp_mRNA_ribo_merge[[paste0("dsim_",k,"_TE")]] <- (temp_mRNA_ribo_merge[[paste0("dsim_",k,"_CDS_Ribo_rpkm")]]+0.01)/(temp_mRNA_ribo_merge[[paste0("dsim_",k,"_CDS_mRNA_rpkm")]]+0.01)
  temp_mRNA_ribo_merge[[paste0(k,"_log2TE_FC")]] <- apply(temp_mRNA_ribo_merge[,c(paste0("dmel_",k,"_TE"),paste0("dsim_",k,"_TE"))],1,function(m){
    log2((m[2]+0.01)/(m[1]+0.01))
  })
}
temp_mRNA_ribo_merge$mRNA_mean_dmel <- rowMeans(temp_mRNA_ribo_merge[,grep("dmel_.*_CDS_mRNA_rpkm",colnames(temp_mRNA_ribo_merge))])
temp_mRNA_ribo_merge$mRNA_mean_dsim <- rowMeans(temp_mRNA_ribo_merge[,grep("dsim_.*_CDS_mRNA_rpkm",colnames(temp_mRNA_ribo_merge))])
temp_mRNA_ribo_merge$ribo_mean_dmel <- rowMeans(temp_mRNA_ribo_merge[,grep("dmel_.*_CDS_Ribo_rpkm",colnames(temp_mRNA_ribo_merge))])
temp_mRNA_ribo_merge$ribo_mean_dsim <- rowMeans(temp_mRNA_ribo_merge[,grep("dsim_.*_CDS_Ribo_rpkm",colnames(temp_mRNA_ribo_merge))])

# v2: map to MAF CDS
# saveRDS(temp_mRNA_ribo_merge,file="tmp_expression_divergence_mRNA_ribo_new.rds",version=2)

temp_mRNA_ribo_merge <- readRDS("tmp_expression_divergence_mRNA_ribo_new.rds")


list_FBtr <- as.list(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"))
names(list_FBtr) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  list_FBtr[[i]] <- temp_mRNA_ribo_merge[temp_mRNA_ribo_merge[[paste0("dmel_",k,"_CDS_mRNA_rpkm")]]>0.1 & temp_mRNA_ribo_merge[[paste0("dsim_",k,"_CDS_mRNA_rpkm")]]>0.1,c("FBtr","geneID",paste0("dmel_",k,"_CDS_mRNA"),paste0("dmel_",k,"_CDS_Ribo"),paste0("dsim_",k,"_CDS_mRNA"),paste0("dsim_",k,"_CDS_Ribo"))]
}
# saveRDS(list_FBtr,file="list_FBtr_rpkm0.1.rds",version=2)

list_FBtr <- readRDS("list_FBtr_rpkm0.1.rds")







### data: num of uORF or translated uORF each FBtr, write.table ----

library(data.table)
# uORF TE
uORF_matrix_27species_TE <- readRDS("uORF_matrix_27species_TE_new.rds")
# CDS TE
temp_mRNA_ribo_merge <- readRDS("tmp_expression_divergence_mRNA_ribo_new.rds")
# canon
dm6_canon <- fread("dmel-all-r6.04.canonical.transcripts.txt",data.table=F,header=F)
colnames(dm6_canon) <- c("geneName","geneID","FBtr","len")
# geneInfo
dm6_geneInfo <- fread("dmel6.gtf.geneInfo",data.table=F,header=T)
dm6_geneInfo_coding <- dm6_geneInfo[dm6_geneInfo$cds_len>0,]
dm6_geneInfo_coding_canon <- dm6_geneInfo_coding[dm6_geneInfo_coding$tx_name %in% dm6_canon$FBtr,]
# count uORF num
tmp <- uORF_matrix_27species_TE[uORF_matrix_27species_TE$transcriptID %in% dm6_canon$FBtr,]
table(tmp[,c("dm6","ASM438218v1")])


# all FBtr, number of translated uORF
list_uORF_num_FBgn_allFBtr_translated <- as.list(1:3)
names(list_uORF_num_FBgn_allFBtr_translated) <- c("no_cutoff","TE0.1","TE0.5")
tmp <- uORF_matrix_27species_TE[uORF_matrix_27species_TE$transcriptID %in% dm6_geneInfo_coding$tx_name,]
tmp <- merge(tmp,dm6_geneInfo_coding[,c("tx_name","gene_id")],by.x="transcriptID",by.y="tx_name",all.x=T)
for(j in 1:3){
  TE_cutoff <- c(-1,0.1,0.5)[j]
  uORF_num_FBgn_allFBtr_translated <- dm6_geneInfo_coding
  for(i in 1:10){
    k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
    # dmel
    tmp2 <- tmp[tmp$dm6==1,]
    tmp_translated <- tmp2[tmp2[[paste0("dmel_",k,"_TE")]]>TE_cutoff,]
    uORF_num <- as.data.frame(table(tmp_translated$transcriptID))
    colnames(uORF_num) <- c("transcriptID",paste0("translated_uorf_num_dm6_",k))
    uORF_num_FBgn_allFBtr_translated <- merge(uORF_num_FBgn_allFBtr_translated,uORF_num,by.x="tx_name",by.y="transcriptID",all.x=T)
    # dsim
    tmp2 <- tmp[tmp$ASM438218v1==1,]
    tmp_translated <- tmp2[tmp2[[paste0("dsim_",k,"_TE")]]>TE_cutoff,]
    uORF_num <- as.data.frame(table(tmp_translated$transcriptID))
    colnames(uORF_num) <- c("transcriptID",paste0("translated_uorf_num_dsim_",k))
    uORF_num_FBgn_allFBtr_translated <- merge(uORF_num_FBgn_allFBtr_translated,uORF_num,by.x="tx_name",by.y="transcriptID",all.x=T)
    # dmel & dsim conserved
    tmp2 <- tmp[tmp$dm6==1 & tmp$ASM438218v1==1,]
    tmp_translated <- tmp2[tmp2[[paste0("dmel_",k,"_TE")]]>TE_cutoff & tmp2[[paste0("dsim_",k,"_TE")]]>TE_cutoff,]
    uORF_num <- as.data.frame(table(tmp_translated$transcriptID))
    colnames(uORF_num) <- c("transcriptID",paste0("translated_uorf_num_both_",k))
    uORF_num_FBgn_allFBtr_translated <- merge(uORF_num_FBgn_allFBtr_translated,uORF_num,by.x="tx_name",by.y="transcriptID",all.x=T)
    # dmel or dsim
    tmp2 <- tmp[tmp$dm6==1 | tmp$ASM438218v1==1,]
    tmp_translated <- tmp2[tmp2[[paste0("dmel_",k,"_TE")]]>TE_cutoff | tmp2[[paste0("dsim_",k,"_TE")]]>TE_cutoff,]
    uORF_num <- as.data.frame(table(tmp_translated$transcriptID))
    colnames(uORF_num) <- c("transcriptID",paste0("translated_uorf_num_dm6_or_dsim_",k))
    uORF_num_FBgn_allFBtr_translated <- merge(uORF_num_FBgn_allFBtr_translated,uORF_num,by.x="tx_name",by.y="transcriptID",all.x=T)
  }
  uORF_num_FBgn_allFBtr_translated[is.na(uORF_num_FBgn_allFBtr_translated)] <- 0
  list_uORF_num_FBgn_allFBtr_translated[[j]] <- uORF_num_FBgn_allFBtr_translated
}
#
# saveRDS(list_uORF_num_FBgn_allFBtr_translated,file="list_uORF_num_FBgn_allFBtr_translated.rds",version=2)


list_uORF_num_FBgn_allFBtr_translated <- readRDS("list_uORF_num_FBgn_allFBtr_translated.rds")

# count genes with uORF
tmp <- list_uORF_num_FBgn_allFBtr_translated$no_cutoff
tmp <- tmp[tmp$tx_name %in% dm6_canon$FBtr,]
t0 <- table(tmp$translated_uorf_num_dm6_em02)


### data: TE rank ----


library(data.table)
# uORF TE
uORF_matrix_27species_TE <- readRDS("uORF_matrix_27species_TE_new.rds")
#
dm6_uORF_TEranked <- uORF_matrix_27species_TE[uORF_matrix_27species_TE$dm6==1,]
dsim_uORF_TEranked <- uORF_matrix_27species_TE[uORF_matrix_27species_TE$ASM438218v1==1,]
#
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  dm6_uORF_TEranked <- dm6_uORF_TEranked[order(dm6_uORF_TEranked$transcriptID,-dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]]),]
  dm6_uORF_TEranked[[paste0("dmel_",k,"_TE_rank")]] <- unlist(tapply(dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]],dm6_uORF_TEranked$transcriptID,function(x){
    if(max(x)>0){l <- 1:length(x)}
    else{l <- rep(0,length(x))}
    return(l)
  }))
  dsim_uORF_TEranked <- dsim_uORF_TEranked[order(dsim_uORF_TEranked$transcriptID,-dsim_uORF_TEranked[[paste0("dsim_",k,"_TE")]]),]
  dsim_uORF_TEranked[[paste0("dsim_",k,"_TE_rank")]] <- unlist(tapply(dsim_uORF_TEranked[[paste0("dsim_",k,"_TE")]],dsim_uORF_TEranked$transcriptID,function(x){
    if(max(x)>0){l <- 1:length(x)}
    else{l <- rep(0,length(x))}
    return(l)
  }))
}
# merge Dmel Dsim TE rank
df_TErank <- merge(dm6_uORF_TEranked,dsim_uORF_TEranked[,c("uorf_align",setdiff(colnames(dsim_uORF_TEranked),colnames(dm6_uORF_TEranked)))],by="uorf_align",all.x=T,all.y=T)
for(j in 1:ncol(df_TErank)){
  df_TErank[is.na(df_TErank[,j]),j] <- 0
}
summary(df_TErank[,1:5])

# saveRDS(dm6_uORF_TEranked,file="dm6_uORF_TEranked.rds",version=2)
# saveRDS(dsim_uORF_TEranked,file="dsim_uORF_TEranked.rds",version=2)
# saveRDS(df_TErank,file="df_TErank.rds",version=2)

dm6_uORF_TEranked <- readRDS("dm6_uORF_TEranked.rds")
dsim_uORF_TEranked <- readRDS("dsim_uORF_TEranked.rds")







### correlation cons uORF TE ----


library(data.table)
# uORF TE
uORF_matrix_27species_TE <- readRDS("uORF_matrix_27species_TE_new.rds")
# CDS TE
temp_mRNA_ribo_merge <- readRDS("tmp_expression_divergence_mRNA_ribo_new.rds")
# num of translated uORF each FBtr
list_uORF_num_FBgn_allFBtr_translated <- readRDS("list_uORF_num_FBgn_allFBtr_translated.rds")
# FBtr with RPKM_0.1
list_FBtr <- readRDS("list_FBtr_rpkm0.1.rds")
# canon
dm6_canon <- fread("dmel-all-r6.04.canonical.transcripts.txt",data.table=F,header=F)
colnames(dm6_canon) <- c("geneName","geneID","FBtr","len")
#


# Fig2A & Fig2B

## (1) uORF TE vs dm6-dsim1 conservation
rho_TE <- 1:10
names(rho_TE) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
df_median <- matrix(ncol=5,nrow=10)
rownames(df_median) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
colnames(df_median) <- c("u1","u2","u3","u4","test")
#
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  FBtr <- temp_mRNA_ribo_merge$FBtr[temp_mRNA_ribo_merge[[paste0("dmel_",k,"_CDS_mRNA_rpkm")]]>0.1 & temp_mRNA_ribo_merge[[paste0("dsim_",k,"_CDS_mRNA_rpkm")]]>0.1]
  tmp <- uORF_matrix_27species_TE
  tmp <- tmp[tmp$transcriptID %in% FBtr,]
  tmp <- tmp[tmp$transcriptID %in% dm6_canon$FBtr,]
  x_dmel_noncon <- tmp[tmp$dm6==1 & tmp$droSim1==0,paste0("dmel_",k,"_TE")]
  x_dmel_con <- tmp[tmp$dm6==1 & tmp$droSim1==1,paste0("dmel_",k,"_TE")]
  x_dsim_noncon <- tmp[tmp$dm6==0 & tmp$droSim1==1,paste0("dsim_",k,"_TE")]
  x_dsim_con <- tmp[tmp$dm6==1 & tmp$droSim1==1,paste0("dsim_",k,"_TE")]
  p1 <- wilcox.test(x_dmel_noncon,x_dmel_con,alternative="l")$p.value
  p2 <- wilcox.test(x_dsim_noncon,x_dsim_con,alternative="l")$p.value
  df_median[k,] <- c(median(x_dmel_noncon),median(x_dmel_con),median(x_dsim_con),median(x_dsim_noncon),quantile(x_dsim_noncon,probs=0.6))
  rho_TE[i] <- cor.test(x_dmel_con,x_dsim_con,method="spearman")$estimate
}



# Fig2C

### dominant uORF TE #1234 ----

library(data.table)
# canon
dm6_canon <- fread("dmel-all-r6.04.canonical.transcripts.txt",data.table=F,header=F)
colnames(dm6_canon) <- c("geneName","geneID","FBtr","len")
# uORF num
list_uORF_num_FBgn_allFBtr_translated <- readRDS("list_uORF_num_FBgn_allFBtr_translated.rds")
uORF_num_FBgn_allFBtr_translated <- list_uORF_num_FBgn_allFBtr_translated$no_cutoff
# TE rank
dm6_uORF_TEranked <- readRDS("dm6_uORF_TEranked.rds")
dm6_uORF_TEranked <- dm6_uORF_TEranked[dm6_uORF_TEranked$transcriptID %in% dm6_canon$FBtr,]
dm6_uORF_TEranked <- dm6_uORF_TEranked[dm6_uORF_TEranked$transcriptID %in% uORF_num_FBgn_allFBtr_translated$tx_name[uORF_num_FBgn_allFBtr_translated$translated_uorf_num_both_em02>=2],]
df_max <- as.data.frame(matrix(ncol=10,nrow=length(unique(dm6_uORF_TEranked$transcriptID))))
colnames(df_max) <- paste0(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"),"_1")
df_max$transcriptID <- sort(unique(dm6_uORF_TEranked$transcriptID))
df_second <- as.data.frame(matrix(ncol=10,nrow=length(unique(dm6_uORF_TEranked$transcriptID))))
colnames(df_second) <- paste0(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"),"_2")
df_second$transcriptID <- sort(unique(dm6_uORF_TEranked$transcriptID))
df_third <- as.data.frame(matrix(ncol=10,nrow=length(unique(dm6_uORF_TEranked$transcriptID))))
colnames(df_third) <- paste0(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"),"_3")
df_third$transcriptID <- sort(unique(dm6_uORF_TEranked$transcriptID))
df_4th <- as.data.frame(matrix(ncol=10,nrow=length(unique(dm6_uORF_TEranked$transcriptID))))
colnames(df_4th) <- paste0(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"),"_4")
df_4th$transcriptID <- sort(unique(dm6_uORF_TEranked$transcriptID))
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  df_max[,i] <- tapply(dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]],dm6_uORF_TEranked$transcriptID,max)
  df_second[,i] <- tapply(dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]],dm6_uORF_TEranked$transcriptID,function(x){
    x <- sort(x,decreasing=T);if(length(x)>=2){return(x[2])} else{return(0)}
  })
  df_third[,i] <- tapply(dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]],dm6_uORF_TEranked$transcriptID,function(x){
    x <- sort(x,decreasing=T);if(length(x)>=3){return(x[3])} else{return(0)}
  })
  df_4th[,i] <- tapply(dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]],dm6_uORF_TEranked$transcriptID,function(x){
    x <- sort(x,decreasing=T);if(length(x)>=4){return(x[4])} else{return(0)}
  })
  dm6_uORF_TEranked <- dm6_uORF_TEranked[order(dm6_uORF_TEranked$transcriptID,-dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]]),]
  dm6_uORF_TEranked[[paste0("dmel_",k,"_TE_rank")]] <- unlist(tapply(dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]],dm6_uORF_TEranked$transcriptID,function(x){
    if(max(x)>0){l <- 1:length(x)}
    else{l <- rep(0,length(x))}
    return(l)
  }))
}
df_dmel_123 <- merge(df_max,df_second,by="transcriptID")
df_dmel_123 <- merge(df_dmel_123,df_third,by="transcriptID")
df_dmel_123 <- merge(df_dmel_123,df_4th,by="transcriptID")

# dsim
dsim_uORF_TEranked <- readRDS("dsim_uORF_TEranked.rds")
dsim_uORF_TEranked <- dsim_uORF_TEranked[dsim_uORF_TEranked$transcriptID %in% dm6_canon$FBtr,]
dsim_uORF_TEranked <- dsim_uORF_TEranked[dsim_uORF_TEranked$transcriptID %in% uORF_num_FBgn_allFBtr_translated$tx_name[uORF_num_FBgn_allFBtr_translated$translated_uorf_num_both_em02>=2],]
df_max <- as.data.frame(matrix(ncol=10,nrow=length(unique(dsim_uORF_TEranked$transcriptID))))
colnames(df_max) <- paste0(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"),"_1")
df_max$transcriptID <- sort(unique(dsim_uORF_TEranked$transcriptID))
df_second <- as.data.frame(matrix(ncol=10,nrow=length(unique(dsim_uORF_TEranked$transcriptID))))
colnames(df_second) <- paste0(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"),"_2")
df_second$transcriptID <- sort(unique(dsim_uORF_TEranked$transcriptID))
df_third <- as.data.frame(matrix(ncol=10,nrow=length(unique(dsim_uORF_TEranked$transcriptID))))
colnames(df_third) <- paste0(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"),"_3")
df_third$transcriptID <- sort(unique(dsim_uORF_TEranked$transcriptID))
df_4th <- as.data.frame(matrix(ncol=10,nrow=length(unique(dsim_uORF_TEranked$transcriptID))))
colnames(df_4th) <- paste0(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"),"_4")
df_4th$transcriptID <- sort(unique(dsim_uORF_TEranked$transcriptID))
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  df_max[,i] <- tapply(dsim_uORF_TEranked[[paste0("dsim_",k,"_TE")]],dsim_uORF_TEranked$transcriptID,max)
  df_second[,i] <- tapply(dsim_uORF_TEranked[[paste0("dsim_",k,"_TE")]],dsim_uORF_TEranked$transcriptID,function(x){
    x <- sort(x,decreasing=T);if(length(x)>=2){return(x[2])} else{return(0)}
  })
  df_third[,i] <- tapply(dsim_uORF_TEranked[[paste0("dsim_",k,"_TE")]],dsim_uORF_TEranked$transcriptID,function(x){
    x <- sort(x,decreasing=T);if(length(x)>=3){return(x[3])} else{return(0)}
  })
  df_4th[,i] <- tapply(dsim_uORF_TEranked[[paste0("dsim_",k,"_TE")]],dsim_uORF_TEranked$transcriptID,function(x){
    x <- sort(x,decreasing=T);if(length(x)>=4){return(x[4])} else{return(0)}
  })
  dsim_uORF_TEranked <- dsim_uORF_TEranked[order(dsim_uORF_TEranked$transcriptID,-dsim_uORF_TEranked[[paste0("dsim_",k,"_TE")]]),]
  dsim_uORF_TEranked[[paste0("dsim_",k,"_TE_rank")]] <- unlist(tapply(dsim_uORF_TEranked[[paste0("dsim_",k,"_TE")]],dsim_uORF_TEranked$transcriptID,function(x){
    if(max(x)>0){l <- 1:length(x)}
    else{l <- rep(0,length(x))}
    return(l)
  }))
}
df_dsim_123 <- merge(df_max,df_second,by="transcriptID")
df_dsim_123 <- merge(df_dsim_123,df_third,by="transcriptID")
df_dsim_123 <- merge(df_dsim_123,df_4th,by="transcriptID")



# Fig2D & Fig2E

### dominat vs other transl. uORF cons frac & TE-FC ----

#
# canon
dm6_canon <- fread("dmel-all-r6.04.canonical.transcripts.txt",data.table=F,header=F)
colnames(dm6_canon) <- c("geneName","geneID","FBtr","len")
# uORF num
list_uORF_num_FBgn_allFBtr_translated <- readRDS("list_uORF_num_FBgn_allFBtr_translated.rds")
uORF_num_FBgn_allFBtr_translated <- list_uORF_num_FBgn_allFBtr_translated$no_cutoff
# TE rank
dm6_uORF_TEranked <- readRDS("dm6_uORF_TEranked.rds")
dm6_uORF_TEranked <- dm6_uORF_TEranked[dm6_uORF_TEranked$transcriptID %in% dm6_canon$FBtr,]
dm6_uORF_TEranked <- dm6_uORF_TEranked[dm6_uORF_TEranked$transcriptID %in% uORF_num_FBgn_allFBtr_translated$tx_name[uORF_num_FBgn_allFBtr_translated$translated_uorf_num_both_em02>=2],]
df_max <- matrix(ncol=10,nrow=length(unique(dm6_uORF_TEranked$transcriptID)))
colnames(df_max) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
rownames(df_max) <- sort(unique(dm6_uORF_TEranked$transcriptID))
df_second <- matrix(ncol=10,nrow=length(unique(dm6_uORF_TEranked$transcriptID)))
colnames(df_second) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
rownames(df_second) <- sort(unique(dm6_uORF_TEranked$transcriptID))
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  df_max[,i] <- tapply(dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]],dm6_uORF_TEranked$transcriptID,max)
  df_second[,i] <- tapply(dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]],dm6_uORF_TEranked$transcriptID,function(x){
    x <- sort(x,decreasing=T)
    x[2]
  })
}


# Fig3A

df_rho <- data.frame(dmel=1:10,dsim=1:10)
rownames(df_rho) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  cds <- temp_mRNA_ribo_merge[temp_mRNA_ribo_merge[[paste0("dmel_",k,"_CDS_mRNA_rpkm")]]>0.1 & temp_mRNA_ribo_merge[[paste0("dsim_",k,"_CDS_mRNA_rpkm")]]>0.1,c("FBtr","geneID",paste0("dmel_",k,"_TE"),paste0("dsim_",k,"_TE"))]
  colnames(cds) <- c("transcriptID","geneID","dmel_cds_TE","dsim_cds_TE")
  uorf <- uORF_matrix_27species_TE[uORF_matrix_27species_TE[[paste0("dmel_",k,"_mRNA_rpkm")]]>0.1 & uORF_matrix_27species_TE[[paste0("dsim_",k,"_mRNA_rpkm")]]>0.1 & uORF_matrix_27species_TE$dm6==1 & uORF_matrix_27species_TE$ASM438218v1==1,c("uorf_id","uorf_align","transcriptID",paste0("dmel_",k,"_TE"),paste0("dsim_",k,"_TE"))]
  colnames(uorf) <- c("uorf_id","uorf_align","transcriptID","dmel_uorf_TE","dsim_uorf_TE")
  uorf_cds <- merge(uorf,cds,by="transcriptID")
  # dmel
  x <- log2(uorf_cds$dmel_uorf_TE)
  y <- log2(uorf_cds$dmel_cds_TE)
  df_rho[k,"dmel"] <- cor.test(x,y,method="spearman")$estimate
  # dsim
  x <- log2(uorf_cds$dsim_uorf_TE)
  y <- log2(uorf_cds$dsim_cds_TE)
  df_rho[k,"dsim"] <- cor.test(x,y,method="spearman")$estimate
}

# Fig3B

l_rho_bin <- 1:10
names(l_rho_bin) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  cds <- temp_mRNA_ribo_merge[temp_mRNA_ribo_merge[[paste0("dmel_",k,"_CDS_mRNA_rpkm")]]>0.1 & temp_mRNA_ribo_merge[[paste0("dsim_",k,"_CDS_mRNA_rpkm")]]>0.1,c("FBtr","geneID",paste0(k,"_log2TE_FC"))]
  colnames(cds) <- c("transcriptID","geneID","cds_log2TEFC")
  uorf <- uORF_matrix_27species_TE[uORF_matrix_27species_TE[[paste0("dmel_",k,"_mRNA_rpkm")]]>0.1 & uORF_matrix_27species_TE[[paste0("dsim_",k,"_mRNA_rpkm")]]>0.1 & uORF_matrix_27species_TE$dm6==1 & uORF_matrix_27species_TE$ASM438218v1==1,c("uorf_id","uorf_align","transcriptID",paste0(k,"_log2TE_FC"))]
  colnames(uorf) <- c("uorf_id","uorf_align","transcriptID","uorf_log2TEFC")
  uorf_cds <- merge(uorf,cds,by="transcriptID")
  x <- uorf_cds$uorf_log2TEFC
  y <- uorf_cds$cds_log2TEFC
  z <- data.frame(uORF_TEFC=x,CDS_TEFC=y)
  z <- z[order(z$uORF_TEFC),]
  z$rank <- ceiling(1:nrow(z)/(nrow(z)/50))
  t0 <- tapply(z$CDS_TEFC,z$rank,median)
  l_rho_bin[i] <- cor.test(1:50,t0,method="spearman")$estimate
}




### class123 vs beta ----


# TE rank
df_TErank <- readRDS("df_TErank.rds")
# num of uORF or translated uORF
list_uORF_num_FBgn_allFBtr_translated <- readRDS("list_uORF_num_FBgn_allFBtr_translated.rds")
uORF_num_FBgn_allFBtr_translated <- list_uORF_num_FBgn_allFBtr_translated$TE0.1

# Fig3C & FigS17

# TE-FC vs class
list_share_dominant_FBtr <- as.list(1:10)
names(list_share_dominant_FBtr) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
list_class2_FBtr <- as.list(1:10)
names(list_class2_FBtr) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
list_class3_FBtr <- as.list(1:10)
names(list_class3_FBtr) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
cor_class123 <- 1:10
names(cor_class123) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
p_class123 <- 1:10
names(p_class123) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
cor_class123_all <- 1:10
names(cor_class123_all) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
p_class123_all <- 1:10
names(p_class123_all) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
list_share_dominant_uorf <- as.list(1:10)
names(list_share_dominant_uorf) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
m_class123 <- matrix(ncol=3,nrow=10)
rownames(m_class123) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
colnames(m_class123) <- paste0("class",1:3)
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  bt <- fread(paste0("beta_gamma/",k,"_Beta.rpkm0.1.3.csv"),data.table=F,header=T)
  bt <- bt[grep("_",bt$id,invert=T),]
  # FBtr with transl.uORF in both species
  FBtr_transl_both <- intersect(bt$id,uORF_num_FBgn_allFBtr_translated$tx_name[uORF_num_FBgn_allFBtr_translated[[paste0("translated_uorf_num_both_",k)]]>0])
  # share dominant uORF
  df_TErank_i <- df_TErank[df_TErank$transcriptID %in% FBtr_transl_both,]
  df_TErank_i_share <- df_TErank_i[df_TErank_i[[paste0("dmel_",k,"_TE_rank")]]==1 & df_TErank_i[[paste0("dsim_",k,"_TE_rank")]]==1,]
  list_share_dominant_uorf[[k]] <- df_TErank_i_share[,c("uorf_align","uorf_id")]
  df_TErank_i_nonshare <- df_TErank_i[!(df_TErank_i$transcriptID %in% df_TErank_i_share$transcriptID),]
  # record FBtr
  list_share_dominant_FBtr[[i]] <- unique(df_TErank_i_share$transcriptID)
  list_class2_FBtr[[i]] <- unique(df_TErank_i_nonshare$transcriptID)
  list_class3_FBtr[[i]] <- setdiff(bt$id,FBtr_transl_both)
}




### uORF length vs beta ----


# TE rank
df_TErank <- readRDS("df_TErank.rds")
# num of uORF or translated uORF
list_uORF_num_FBgn_allFBtr_translated <- readRDS("list_uORF_num_FBgn_allFBtr_translated.rds")
uORF_num_FBgn_allFBtr_translated <- list_uORF_num_FBgn_allFBtr_translated$TE0.1

# Fig3D & FigS18

# TE-FC vs class
list_share_dominant_FBtr <- as.list(1:10)
names(list_share_dominant_FBtr) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
list_class2_FBtr <- as.list(1:10)
names(list_class2_FBtr) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
list_class3_FBtr <- as.list(1:10)
names(list_class3_FBtr) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
cor_class123 <- 1:10
names(cor_class123) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
p_class123 <- 1:10
names(p_class123) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
cor_class123_all <- 1:10
names(cor_class123_all) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
p_class123_all <- 1:10
names(p_class123_all) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
list_share_dominant_uorf <- as.list(1:10)
names(list_share_dominant_uorf) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
m_class123 <- matrix(ncol=3,nrow=10)
rownames(m_class123) <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")
colnames(m_class123) <- paste0("class",1:3)
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  bt <- fread(paste0("beta_gamma/",k,"_Beta.rpkm0.1.3.csv"),data.table=F,header=T)
  bt <- bt[grep("_",bt$id,invert=T),]
  tmp <- df_TErank[df_TErank$transcriptID %in% bt$id,]
  # FBtr with transl.uORF in both species
  FBtr_transl_both <- intersect(bt$id,uORF_num_FBgn_allFBtr_translated$tx_name[uORF_num_FBgn_allFBtr_translated[[paste0("translated_uorf_num_both_",k)]]>0])
  x0 <- abs(bt$log2Beta[!(bt$id %in% FBtr_transl_both)])
  tmp_translated <- tmp[tmp$transcriptID %in% FBtr_transl_both,]
  # long/short sum uORF len
  df_len <- as.data.frame(tapply(tmp_translated$dmel_len_nocds,tmp_translated$transcriptID,sum))
  colnames(df_len) <- c("len_sum")
  df_len$transcriptID <- rownames(df_len)
  FBtr_short <- df_len$transcriptID[df_len$len_sum<=median(df_len$len_sum)]
  FBtr_long <- df_len$transcriptID[df_len$len_sum>median(df_len$len_sum)]
}





### CV in 10/ 6 dev / 4 embryo stages ----


library(data.table)
# uORF TE
uORF_matrix_27species_TE <- readRDS("uORF_matrix_27species_TE_new.rds")
# CDS TE
temp_mRNA_ribo_merge <- readRDS("tmp_expression_divergence_mRNA_ribo_new.rds")
# num of translated uORF each FBtr
list_uORF_num_FBgn_allFBtr_translated <- readRDS("list_uORF_num_FBgn_allFBtr_translated.rds")
# FBtr with RPKM_0.1
list_FBtr <- readRDS("list_FBtr_rpkm0.1.rds")
# canon
dm6_canon <- fread("dmel-all-r6.04.canonical.transcripts.txt",data.table=F,header=F)
colnames(dm6_canon) <- c("geneName","geneID","FBtr","len")
#


# CDS TE CV
libs <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
tmp_cv <- temp_mRNA_ribo_merge
tmp_cv$dmel_TE_cv10 <- apply(tmp_cv[,paste0("dmel_",libs,"_TE")],1,function(x){
  sd(x)/mean(x)
})
tmp_cv$dsim_TE_cv10 <- apply(tmp_cv[,paste0("dsim_",libs,"_TE")],1,function(x){
  sd(x)/mean(x)
})
tmp_cv$dmel_TE_cv6 <- apply(tmp_cv[,paste0("dmel_",libs[1:6],"_TE")],1,function(x){
  sd(x)/mean(x)
})
tmp_cv$dsim_TE_cv6 <- apply(tmp_cv[,paste0("dsim_",libs[1:6],"_TE")],1,function(x){
  sd(x)/mean(x)
})
tmp_cv$dmel_TE_cv4 <- apply(tmp_cv[,paste0("dmel_",libs[1:4],"_TE")],1,function(x){
  sd(x)/mean(x)
})
tmp_cv$dsim_TE_cv4 <- apply(tmp_cv[,paste0("dsim_",libs[1:4],"_TE")],1,function(x){
  sd(x)/mean(x)
})
# canon, merge with uORF num
tmp_cv <- tmp_cv[tmp_cv$FBtr %in% dm6_canon$FBtr,]
tmp_cv <- merge(tmp_cv,list_uORF_num_FBgn_allFBtr_translated$TE0.1,by.x="FBtr",by.y="tx_name",all.x=T)
tmp_cv[is.na(tmp_cv)] <- 0





# Fig4A, 4B, 4C, FigS19, & Fig20

## (1) translated uORF number

# (1.1) translated in at least one sample

# genes with translated in at least one sample
FBtr_dmel_01 <- tmp_cv$FBtr[apply(tmp_cv[,paste0("translated_uorf_num_dm6_",libs)],1,sum)>0]
FBtr_dsim_01 <- tmp_cv$FBtr[apply(tmp_cv[,paste0("translated_uorf_num_dsim_",libs)],1,sum)>0]
# genes with rpkm>0.1 in at least 1 sample
FBtr_rpkm0.1_in_01 <- unique(unlist(lapply(list_FBtr,function(x){x$FBtr})))
tmp_cv_rpkm0.1_in_01 <- tmp_cv[tmp_cv$FBtr %in% FBtr_rpkm0.1_in_01,]
#

# genes with translated uORF in all 10 samples
FBtr_dmel_10 <- tmp_cv$FBtr[apply(tmp_cv[,paste0("translated_uorf_num_dm6_",libs)],1,prod)>0]
FBtr_dsim_10 <- tmp_cv$FBtr[apply(tmp_cv[,paste0("translated_uorf_num_dsim_",libs)],1,prod)>0]
# genes with rpkm>0.1 in all 10 samples
t0 <- table(unlist(lapply(list_FBtr,function(x){x$FBtr})))
FBtr_rpkm0.1_in_10 <- names(t0)[t0==10]
tmp_cv_rpkm0.1_in_10 <- tmp_cv[tmp_cv$FBtr %in% FBtr_rpkm0.1_in_10,]
#



# (1.2) translated uORF in all 10 samples

# dmel cv, with vs without uORF
cv1_dmel <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv10[tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dmel_10]
cv0_dmel <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv10[!(tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dmel_10)]
# dsim cv, with vs without uORF
cv1_dsim <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv10[tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dsim_10]
cv0_dsim <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv10[!(tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dsim_10)]
# dmel cv vs dsim cv, dmel-specifif genes
cv1 <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv10[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dmel_10,FBtr_dsim_10)]
cv2 <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv10[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dmel_10,FBtr_dsim_10)]
# dmel cv vs dsim cv, dsim-specifif genes
cv3 <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv10[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dsim_10,FBtr_dmel_10)]
cv4 <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv10[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dsim_10,FBtr_dmel_10)]



# (1.3) translated uORF in 6 dev samples

FBtr_dmel_6 <- tmp_cv$FBtr[apply(tmp_cv[,paste0("translated_uorf_num_dm6_",libs[1:6])],1,prod)>0]
FBtr_dsim_6 <- tmp_cv$FBtr[apply(tmp_cv[,paste0("translated_uorf_num_dsim_",libs[1:6])],1,prod)>0]
# genes with rpkm>0.1 in all 6 samples
t0 <- table(c(list_FBtr$em02$FBtr,list_FBtr$em26$FBtr,list_FBtr$em612$FBtr,
              list_FBtr$em1224$FBtr,list_FBtr$larva$FBtr,list_FBtr$pupa$FBtr))
FBtr_rpkm0.1_in_6 <- names(t0)[t0==6]
tmp_cv_rpkm0.1_in_6 <- tmp_cv[tmp_cv$FBtr %in% FBtr_rpkm0.1_in_6,]

#
# dmel cv, with vs without uORF
cv1_dmel <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv6[tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dmel_6]
cv0_dmel <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv6[!(tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dmel_6)]
# dsim cv, with vs without uORF
cv1_dsim <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv6[tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dsim_6]
cv0_dsim <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv6[!(tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dsim_6)]
# dmel cv vs dsim cv, dmel-specifif genes
cv1 <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv6[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dmel_6,FBtr_dsim_6)]
cv2 <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv6[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dmel_6,FBtr_dsim_6)]
# dmel cv vs dsim cv, dsim-specifif genes
cv3 <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv6[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dsim_6,FBtr_dmel_6)]
cv4 <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv6[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dsim_6,FBtr_dmel_6)]



# (1.4) translated uORF in 4 embryo samples

FBtr_dmel_4 <- tmp_cv$FBtr[apply(tmp_cv[,paste0("translated_uorf_num_dm6_",libs[1:4])],1,prod)>0]
FBtr_dsim_4 <- tmp_cv$FBtr[apply(tmp_cv[,paste0("translated_uorf_num_dsim_",libs[1:4])],1,prod)>0]
# genes with rpkm>0.1 in all 4 samples
t0 <- table(c(list_FBtr$em02$FBtr,list_FBtr$em26$FBtr,
              list_FBtr$em612$FBtr,list_FBtr$em1224$FBtr))
FBtr_rpkm0.1_in_4 <- names(t0)[t0==4]
tmp_cv_rpkm0.1_in_4 <- tmp_cv[tmp_cv$FBtr %in% FBtr_rpkm0.1_in_4,]

#
# dmel cv, with vs without uORF
cv1_dmel <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv4[tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dmel_4]
cv0_dmel <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv4[!(tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dmel_4)]
# dsim cv, with vs without uORF
cv1_dsim <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv4[tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dsim_4]
cv0_dsim <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv4[!(tmp_cv_rpkm0.1_in_01$FBtr %in% FBtr_dsim_4)]
# dmel cv vs dsim cv, dmel-specifif genes
cv1 <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv4[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dmel_4,FBtr_dsim_4)]
cv2 <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv4[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dmel_4,FBtr_dsim_4)]
# dmel cv vs dsim cv, dsim-specifif genes
cv3 <- tmp_cv_rpkm0.1_in_01$dmel_TE_cv4[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dsim_4,FBtr_dmel_4)]
cv4 <- tmp_cv_rpkm0.1_in_01$dsim_TE_cv4[tmp_cv_rpkm0.1_in_01$FBtr %in% setdiff(FBtr_dsim_4,FBtr_dmel_4)]



### bootstrap shared dominant uORF ----


# bootstrap 1000 times: Dmel, TE > 0.1

# uORF TE rank
dm6_uORF_TEranked <- readRDS("dm6_uORF_TEranked.rds")
dsim_uORF_TEranked <- readRDS("dsim_uORF_TEranked.rds")
dm6_uORF <- dm6_uORF_TEranked
dsim_uORF <- dsim_uORF_TEranked
# canon
dm6_canon <- fread("dmel-all-r6.04.canonical.transcripts.txt",data.table=F,header=F)
colnames(dm6_canon) <- c("geneName","geneID","FBtr","len")
# num of uORF
list_uORF_num_FBgn_allFBtr_translated <- readRDS("list_uORF_num_FBgn_allFBtr_translated.rds")
uORF_num_FBgn_allFBtr <- list_uORF_num_FBgn_allFBtr_translated$no_cutoff
uORF_num_FBgn_allFBtr <- uORF_num_FBgn_allFBtr[uORF_num_FBgn_allFBtr$tx_name %in% dm6_canon$FBtr,]

# select genes with max uORF > 0 in N samples
FBtr_2moreuorf_dm6 <- uORF_num_FBgn_allFBtr$tx_name[uORF_num_FBgn_allFBtr$translated_uorf_num_dm6_em02>=2] #
dm6_uORF_TEranked <- dm6_uORF[dm6_uORF$transcriptID %in% FBtr_2moreuorf_dm6,]
df_max <- matrix(ncol=10,nrow=length(unique(dm6_uORF_TEranked$transcriptID)))
colnames(df_max) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
rownames(df_max) <- sort(unique(dm6_uORF_TEranked$transcriptID))
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  df_max[,i] <- tapply(dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]],dm6_uORF_TEranked$transcriptID,max)
}
# observed value: under 9 cutoffs
# create list
c_dominant_Dmel_v2 <- 2:10
names(c_dominant_Dmel_v2) <- paste0("In_",2:10,"_samples")
n_gene_Dmel_v2 <- 2:10
names(n_gene_Dmel_v2) <- paste0("In_",2:10,"_samples")
for(Ncutoff in 2:10){
  dm6_uORF_TEranked <- dm6_uORF[dm6_uORF$transcriptID %in% FBtr_2moreuorf_dm6,]
  FBtr0 <- rownames(df_max)[apply(df_max,1,function(x){
    sum(x>0.1) # translated defined as TE > 0.1
  })>=Ncutoff]
  dm6_uORF_TEranked <- dm6_uORF_TEranked[dm6_uORF_TEranked$transcriptID %in% FBtr0,]
  # matrix of uORF TE rank
  m0_dm6_uORF_TEranked <- dm6_uORF_TEranked[,grep("transcriptID|_TE_rank$",colnames(dm6_uORF_TEranked))]
  rownames(m0_dm6_uORF_TEranked) <- dm6_uORF_TEranked$uorf_align
  m0_dm6_uORF_TEranked$rank_sum <- rowSums(m0_dm6_uORF_TEranked[,2:11])
  m0_dm6_uORF_TEranked$all1 <- apply(m0_dm6_uORF_TEranked[,2:11],1,function(x){
    x <- x[x>0]
    prod(x)==1
  })
  c_dominant_Dmel_v2[Ncutoff-1] <- sum(m0_dm6_uORF_TEranked$all1)-1
  n_gene_Dmel_v2[Ncutoff-1] <- length(FBtr0)
}
# saveRDS(c_dominant_Dmel_v2,file="c_dominant_Dmel_v2.rds",version=2)
# saveRDS(n_gene_Dmel_v2,file="n_gene_Dmel_v2.rds",version=2)


# FigS14

# simulation: create list
list_bootstrap_dominant_Dmel_v2 <- as.list(2:10)
names(list_bootstrap_dominant_Dmel_v2) <- paste0("In_",2:10,"_samples")
# run
for(Ncutoff in 2:10){
  dm6_uORF_TEranked <- dm6_uORF[dm6_uORF$transcriptID %in% FBtr_2moreuorf_dm6,]
  FBtr0 <- rownames(df_max)[apply(df_max,1,function(x){
    sum(x>0.1) # translated defined as TE > 0.1
  })>=Ncutoff]
  dm6_uORF_TEranked <- dm6_uORF_TEranked[dm6_uORF_TEranked$transcriptID %in% FBtr0,]
  #
  list_bootstrap_dominant_Dmel_v2[[Ncutoff-1]] <- sapply(1:1000,function(Non){
    # each sample: shuffle uORF TE, each gene: get rank
    for(i in 1:10){
      k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
      k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
      dm6_uORF_TEranked$tmp_shuffle_TE <- sample(dm6_uORF_TEranked[[paste0("dmel_",k,"_TE")]],nrow(dm6_uORF_TEranked))
      dm6_uORF_TEranked <- dm6_uORF_TEranked[order(dm6_uORF_TEranked$transcriptID,-dm6_uORF_TEranked$tmp_shuffle_TE),]
      dm6_uORF_TEranked[[paste0("dmel_",k,"_TE_allshuffle_rank")]] <- unlist(tapply(dm6_uORF_TEranked$tmp_shuffle_TE,dm6_uORF_TEranked$transcriptID,function(x){
        if(max(x)>0){l <- 1:length(x)}
        else{l <- rep(0,length(x))}
        return(l)
      }))
    }
    # matrix of uORF TE rank (shuffled)
    m1_dm6_uORF_TEranked <- dm6_uORF_TEranked[,grep("transcriptID|_TE_allshuffle_rank$",colnames(dm6_uORF_TEranked))]
    rownames(m1_dm6_uORF_TEranked) <- dm6_uORF_TEranked$uorf_align
    m1_dm6_uORF_TEranked$rank_sum <- rowSums(m1_dm6_uORF_TEranked[,2:11])
    m1_dm6_uORF_TEranked$all1 <- apply(m1_dm6_uORF_TEranked[,2:11],1,function(x){
      x <- x[x>0]
      prod(x)==1
    })
    sum(m1_dm6_uORF_TEranked$all1)
  })
}
# saveRDS(list_bootstrap_dominant_Dmel_v2,file="list_bootstrap_dominant_Dmel_v2.rds",version=2)

list_bootstrap_dominant_Dmel_v2 <- readRDS("list_bootstrap_dominant_Dmel_v2.rds")

unlist(lapply(list_bootstrap_dominant_Dmel_v2,median))



# bootstrap 1000 times: Dsim, TE > 0.1

# select genes with max uORF > 0 in N samples
FBtr_2moreuorf_dsim <- uORF_num_FBgn_allFBtr$tx_name[uORF_num_FBgn_allFBtr$translated_uorf_num_dsim_em02>=2]
dsim_uORF_TEranked <- dsim_uORF[dsim_uORF$transcriptID %in% FBtr_2moreuorf_dsim,]
df_max <- matrix(ncol=10,nrow=length(unique(dsim_uORF_TEranked$transcriptID)))
colnames(df_max) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
rownames(df_max) <- sort(unique(dsim_uORF_TEranked$transcriptID))
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  df_max[,i] <- tapply(dsim_uORF_TEranked[[paste0("dmel_",k,"_TE")]],dsim_uORF_TEranked$transcriptID,max)
}
# observed value: under 9 cutoffs
# create list
c_dominant_Dsim_v2 <- 2:10
names(c_dominant_Dsim_v2) <- paste0("In_",2:10,"_samples")
n_gene_Dsim_v2 <- 2:10
names(n_gene_Dsim_v2) <- paste0("In_",2:10,"_samples")
for(Ncutoff in 2:10){
  dsim_uORF_TEranked <- dsim_uORF[dsim_uORF$transcriptID %in% FBtr_2moreuorf_dsim,]
  FBtr0 <- rownames(df_max)[apply(df_max,1,function(x){
    sum(x>0.1) # translated defined as TE > 0.1
  })>=Ncutoff]
  dsim_uORF_TEranked <- dsim_uORF_TEranked[dsim_uORF_TEranked$transcriptID %in% FBtr0,]
  # matrix of uORF TE rank
  m0_dsim_uORF_TEranked <- dsim_uORF_TEranked[,grep("transcriptID|_TE_rank$",colnames(dsim_uORF_TEranked))]
  rownames(m0_dsim_uORF_TEranked) <- dsim_uORF_TEranked$uorf_align
  m0_dsim_uORF_TEranked$rank_sum <- rowSums(m0_dsim_uORF_TEranked[,2:11])
  m0_dsim_uORF_TEranked$all1 <- apply(m0_dsim_uORF_TEranked[,2:11],1,function(x){
    x <- x[x>0]
    prod(x)==1
  })
  c_dominant_Dsim_v2[Ncutoff-1] <- sum(m0_dsim_uORF_TEranked$all1)
  n_gene_Dsim_v2[Ncutoff-1] <- length(FBtr0)
}
# saveRDS(c_dominant_Dsim_v2,file="c_dominant_Dsim_v2.rds",version=2)
# saveRDS(n_gene_Dsim_v2,file="n_gene_Dsim_v2.rds",version=2)

# simulation: create list
list_bootstrap_dominant_Dsim_v2 <- as.list(2:10)
names(list_bootstrap_dominant_Dsim_v2) <- paste0("In_",2:10,"_samples")
# run
for(Ncutoff in 2:10){
  dsim_uORF_TEranked <- dsim_uORF[dsim_uORF$transcriptID %in% FBtr_2moreuorf_dsim,]
  FBtr0 <- rownames(df_max)[apply(df_max,1,function(x){
    sum(x>0.1) # translated defined as TE > 0.1
  })>=Ncutoff]
  dsim_uORF_TEranked <- dsim_uORF_TEranked[dsim_uORF_TEranked$transcriptID %in% FBtr0,]
  #
  list_bootstrap_dominant_Dsim_v2[[Ncutoff-1]] <- sapply(1:1000,function(Non){
    # each sample: shuffle uORF TE, each gene: get rank
    for(i in 1:10){
      k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
      k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
      dsim_uORF_TEranked$tmp_shuffle_TE <- sample(dsim_uORF_TEranked[[paste0("dsim_",k,"_TE")]],nrow(dsim_uORF_TEranked))
      dsim_uORF_TEranked <- dsim_uORF_TEranked[order(dsim_uORF_TEranked$transcriptID,-dsim_uORF_TEranked$tmp_shuffle_TE),]
      dsim_uORF_TEranked[[paste0("dsim_",k,"_TE_allshuffle_rank")]] <- unlist(tapply(dsim_uORF_TEranked$tmp_shuffle_TE,dsim_uORF_TEranked$transcriptID,function(x){
        if(max(x)>0){l <- 1:length(x)}
        else{l <- rep(0,length(x))}
        return(l)
      }))
    }
    # matrix of uORF TE rank (shuffled)
    m1_dsim_uORF_TEranked <- dsim_uORF_TEranked[,grep("transcriptID|_TE_allshuffle_rank$",colnames(dsim_uORF_TEranked))]
    rownames(m1_dsim_uORF_TEranked) <- dsim_uORF_TEranked$uorf_align
    m1_dsim_uORF_TEranked$rank_sum <- rowSums(m1_dsim_uORF_TEranked[,2:11])
    m1_dsim_uORF_TEranked$all1 <- apply(m1_dsim_uORF_TEranked[,2:11],1,function(x){
      x <- x[x>0]
      prod(x)==1
    })
    sum(m1_dsim_uORF_TEranked$all1)
  })
}
# saveRDS(list_bootstrap_dominant_Dsim_v2,file="list_bootstrap_dominant_Dsim_v2.rds",version=2)

list_bootstrap_dominant_Dsim_v2 <- readRDS("list_bootstrap_dominant_Dsim_v2.rds")

unlist(lapply(list_bootstrap_dominant_Dsim_v2,median))





# mammal

# Fig 8A & FigS26

# uORF
merge_3sp_uorf_id_TE <- readRDS("merge_3sp_uorf_id_TE.rds")
merge_3sp_uorf_id_TE$pt_cons <- c(merge_3sp_uorf_id_TE$uORF_id_pt!="N_0")
merge_3sp_uorf_id_TE$mac_cons <- c(merge_3sp_uorf_id_TE$uORF_id_mac!="N_0")
#
tmp <- merge_3sp_uorf_id_TE[merge_3sp_uorf_id_TE$tx_name_hs %in% rownames(primate_rpkm0.1_canon_count),]
te_hs_gain <- tmp$hs_total_TE[tmp$uORF_id_hs!="N_0" & tmp$uORF_id_pt=="N_0" & tmp$uORF_id_mac=="N_0"]
te_pt_loss <- tmp$hs_total_TE[tmp$uORF_id_hs!="N_0" & tmp$uORF_id_pt=="N_0" & tmp$uORF_id_mac!="N_0"]
te_pt_gain <- tmp$pt_total_TE[tmp$uORF_id_hs=="N_0" & tmp$uORF_id_pt!="N_0" & tmp$uORF_id_mac=="N_0"]
te_hs_loss <- tmp$pt_total_TE[tmp$uORF_id_hs=="N_0" & tmp$uORF_id_pt!="N_0" & tmp$uORF_id_mac!="N_0"]
te_hs_cons <- tmp$hs_total_TE[tmp$uORF_id_hs!="N_0" & tmp$uORF_id_pt!="N_0"]
te_pt_cons <- tmp$pt_total_TE[tmp$uORF_id_hs!="N_0" & tmp$uORF_id_pt!="N_0"]
te1 <- merge_3sp_uorf_id_TE$hs_total_TE[merge_3sp_uorf_id_TE$uORF_id_hs!="N_0" & merge_3sp_uorf_id_TE$uORF_id_mac=="N_0"]
te2 <- merge_3sp_uorf_id_TE$hs_total_TE[merge_3sp_uorf_id_TE$uORF_id_hs!="N_0" & merge_3sp_uorf_id_TE$uORF_id_mac!="N_0"]
te3 <- merge_3sp_uorf_id_TE$mac_total_TE[merge_3sp_uorf_id_TE$uORF_id_hs!="N_0" & merge_3sp_uorf_id_TE$uORF_id_mac!="N_0"]
te4 <- merge_3sp_uorf_id_TE$mac_total_TE[merge_3sp_uorf_id_TE$uORF_id_hs=="N_0" & merge_3sp_uorf_id_TE$uORF_id_mac!="N_0"]


# Fig 8B

uORF_human_macaque_TE_canon <- readRDS("uORF_human_macaque_TE_canon.rds")
CDS_human_macaque_TE_canon <- readRDS("CDS_human_macaque_TE_canon.rds")
ENST <- CDS_human_macaque_TE_canon$transcriptID[CDS_human_macaque_TE_canon[[paste0("human_",k,"_rna_rpkm")]]>0.1 & CDS_human_macaque_TE_canon[[paste0("macaque_",k,"_rna_rpkm")]]>0.1]
tmp <- uORF_human_macaque_TE_canon[uORF_human_macaque_TE_canon$transcriptID %in% ENST,]
tmp_cons <- tmp[tmp[[paste0("human_",k,"_rna_rpkm")]]>0 & tmp[[paste0("macaque_",k,"_rna_rpkm")]]>0,]
tmp_noncons <- tmp[(tmp[[paste0("human_",k,"_rna_rpkm")]]>0 & tmp$hg38==1) | (tmp[[paste0("macaque_",k,"_rna_rpkm")]]>0 & tmp$rheMac3==1),]
te1 <- tmp_noncons$human_brain_TE[tmp_noncons$hg38==1 & tmp_noncons$rheMac3==0]
te2 <- tmp_cons$human_brain_TE[tmp_cons$hg38==1 & tmp_cons$rheMac3==1]
te3 <- tmp_cons$macaque_brain_TE[tmp_cons$hg38==1 & tmp_cons$rheMac3==1]
te4 <- tmp_noncons$macaque_brain_TE[tmp_noncons$hg38==0 & tmp_noncons$rheMac3==1]
m_class123[k,] <- c(median(te1),median(te2),median(te3),median(te4))

# FigS27

df_rho <- data.frame(human=1:3,macaque=1:3)
rownames(df_rho) <- c("brain","liver","testis")
for(k in c("brain","liver","testis")){
  cds <- CDS_human_macaque_TE_canon[CDS_human_macaque_TE_canon[[paste0("human_",k,"_rna_rpkm")]]>0.1 & CDS_human_macaque_TE_canon[[paste0("macaque_",k,"_rna_rpkm")]]>0.1,c("transcriptID",paste0("human_",k,"_TE"),paste0("macaque_",k,"_TE"))]
  colnames(cds) <- c("transcriptID","human_cds_TE","macaque_cds_TE")
  uorf <- uORF_human_macaque_TE_canon[uORF_human_macaque_TE_canon$transcriptID %in% cds$transcriptID,c("uorf_align","transcriptID",paste0("human_",k,"_TE"),paste0("macaque_",k,"_TE"))]
  colnames(uorf) <- c("uorf_align","transcriptID","human_uorf_TE","macaque_uorf_TE")
  uorf_cds <- merge(uorf,cds,by="transcriptID")
  # human
  x <- log2(uorf_cds$human_uorf_TE)
  y <- log2(uorf_cds$human_cds_TE)
  df_rho[k,"human"] <- cor.test(x,y,method="spearman")$estimate
  # macaque
  x <- log2(uorf_cds$macaque_uorf_TE)
  y <- log2(uorf_cds$macaque_cds_TE)
  df_rho[k,"macaque"] <- cor.test(x,y,method="spearman")$estimate
}


# Fig 8C

for(i in 1:3){
  k <- c("brain","liver","testis")[i]
  k2 <- c("Brain","Liver","Testis")[i]
  cds <- CDS_human_macaque_TE_canon[CDS_human_macaque_TE_canon[[paste0("human_",k,"_rna_rpkm")]]>0.1 & CDS_human_macaque_TE_canon[[paste0("macaque_",k,"_rna_rpkm")]]>0.1,c("transcriptID",paste0(k,"_log2TEFC"))]
  colnames(cds) <- c("transcriptID","cds_log2TEFC")
  uorf <- uORF_human_macaque_TE_canon[uORF_human_macaque_TE_canon$transcriptID %in% cds$transcriptID,c("uorf_align","transcriptID",paste0(k,"_log2TEFC"))]
  colnames(uorf) <- c("uorf_align","transcriptID","uorf_log2TEFC")
  uorf_cds <- merge(uorf,cds,by="transcriptID")
  x <- uorf_cds$uorf_log2TEFC
  y <- uorf_cds$cds_log2TEFC
  rho <- cor.test(x,y,method="spearman")$estimate
  z <- data.frame(uORF_TEFC=x,CDS_TEFC=y)
  z <- z[order(z$uORF_TEFC),]
  z$rank <- ceiling(1:nrow(z)/(nrow(z)/50))
  t0 <- tapply(z$CDS_TEFC,z$rank,median)
  rho <- cor.test(1:50,t0,method="spearman")$estimate
}

# Fig 8D & FigS28

for(i in 1:3){
  k <- c("brain","liver","testis")[i]
  k2 <- c("Brain","Liver","Testis")[i]
  bt <- list_xtail_primate_cds_uorf_TE_LFC[[k]]
  bt <- bt[grep("_",bt$id,invert=T),]
# uorf_len_sum
  bt0 <- merge(bt,uorf_len_sum_hg,by.x="id",by.y="transcriptID",all.x=T)
  bt0$uorf_len_sum_hg[is.na(bt0$uorf_len_sum_hg)] <- 0
  bt1 <- bt0[!(bt0$id %in% list_class123_ENST$class3[[k]]),]
  bt1 <- bt1[order(bt1$uorf_len_sum_hg),]
  x0 <- abs(bt0$log2FC_TE_final)[bt0$id %in% list_class123_ENST$class3[[k]]]
  x1 <- abs(bt1$log2FC_TE_final)[bt1$uorf_len_sum_hg<median(bt1$uorf_len_sum_hg)]
  x2 <- abs(bt1$log2FC_TE_final)[bt1$uorf_len_sum_hg>=median(bt1$uorf_len_sum_hg)]
}

# Fig 8E & FigS29

list_class1_ENST <- as.list(1:3)
names(list_class1_ENST) <- c("brain","liver","testis")
list_class2_ENST <- as.list(1:3)
names(list_class2_ENST) <- c("brain","liver","testis")
list_class3_ENST <- as.list(1:3)
names(list_class3_ENST) <- c("brain","liver","testis")
for(i in 1:3){
  k <- c("brain","liver","testis")[i]
  k2 <- c("Brain","Liver","Testis")[i]
  bt <- list_xtail_primate_cds_uorf_TE_LFC[[k]]
  bt <- bt[grep("_",bt$id,invert=T),]
  colnames(bt)[colnames(bt)=="log2FC_TE_final"] <- paste0(k,"_log2TEFC")
  colnames(bt)[colnames(bt)=="id"] <- "transcriptID"
  # ENST of class123
  ENST_class1 <- unique(uORF_human_macaque_TErank_canon$transcriptID[uORF_human_macaque_TErank_canon[[paste0("human_",k,"_TE_rank")]]==1 & uORF_human_macaque_TErank_canon[[paste0("macaque_",k,"_TE_rank")]]==1 &
  uORF_human_macaque_TErank_canon[[paste0("human_",k,"_TE")]]>0.1 & uORF_human_macaque_TErank_canon[[paste0("macaque_",k,"_TE")]]>0.1])
  ENST_class1 <- intersect(bt$transcriptID,ENST_class1)
  ENST_class2 <- unique(uORF_human_macaque_TErank_canon$transcriptID[uORF_human_macaque_TErank_canon[[paste0("human_",k,"_TE")]]>0.1 & uORF_human_macaque_TErank_canon[[paste0("macaque_",k,"_TE")]]>0.1])
  ENST_class2 <- intersect(bt$transcriptID,ENST_class2)
  ENST_class2 <- setdiff(ENST_class2,ENST_class1)
  ENST_class3 <- setdiff(bt$transcriptID,c(ENST_class1,ENST_class2))
  # record ENST class123
  list_class1_ENST[[i]] <- ENST_class1
  list_class2_ENST[[i]] <- ENST_class2
  list_class3_ENST[[i]] <- ENST_class3
  # CDS log2TEFC
  x1 <- abs(bt[[paste0(k,"_log2TEFC")]][bt$transcriptID %in% ENST_class1])
  x2 <- abs(bt[[paste0(k,"_log2TEFC")]][bt$transcriptID %in% ENST_class2])
  x3 <- abs(bt[[paste0(k,"_log2TEFC")]][bt$transcriptID %in% ENST_class3])
}

# Fig 8F & FigS30

df_CDS <- readRDS("df_CDS_TE_human_cell.rds")
df_uORF <- readRDS("df_uORF_TE_human_cell.rds")
# translated uORF
uorf_id <- df_uORF$uorf_id[df_uORF$mean_TE>0.1 & df_uORF$mean_mRNA>0.1]
ENST <- unique(gsub("_.*","",uorf_id))
tmp <- df_CDS[df_CDS$mean_mRNA>0.1,]
tmp <- merge(tmp,uorf_len_sum_hg,by="transcriptID",all.x=T,sort=F)
tmp[is.na(tmp)] <- 0
tmp1 <- tmp[tmp$transcriptID %in% ENST,]
tmp1 <- tmp1[order(tmp1$mean_mRNA),]
tmp1$rank <- ceiling(c(1:nrow(tmp1))/(nrow(tmp1)/20))




## sample genes & uORFs in Table1

## highly expressed genes

# counts > cutoff (quantile = q)

q <- 0.5

list_table1_HEG <- as.list(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"))
names(list_table1_HEG) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
list_table1_HEG_uorf <- as.list(c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH"))
names(list_table1_HEG_uorf) <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
#
for(i in 1:10){
  k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")[i]
  k2 <- c("embryo 0-2h","embryo 2-6h","embryo 6-12h","embryo 12-24h","larva","pupa","female body","male body","female head","male head")[i]
  cds <- temp_mRNA_ribo_merge[temp_mRNA_ribo_merge[[paste0("dmel_",k,"_CDS_mRNA_rpkm")]]>0.1 & temp_mRNA_ribo_merge[[paste0("dsim_",k,"_CDS_mRNA_rpkm")]]>0.1,] # c("FBtr","geneID",paste0("dmel_",k,"_TE"),paste0("dsim_",k,"_TE"))
  uorf <- uORF_matrix_27species_TE[uORF_matrix_27species_TE[[paste0("dmel_",k,"_mRNA_rpkm")]]>0.1 & uORF_matrix_27species_TE[[paste0("dsim_",k,"_mRNA_rpkm")]]>0.1 & uORF_matrix_27species_TE$dm6==1 & uORF_matrix_27species_TE$ASM438218v1==1,] # c("uorf_id","uorf_align","transcriptID",paste0("dmel_",k,"_TE"),paste0("dsim_",k,"_TE"))
  # canon
  cds <- cds[cds$FBtr %in% dm6_canon$FBtr,]
  uorf <- uorf[uorf$transcriptID %in% dm6_canon$FBtr,]
  # cutoff = quantile
  c1 <- quantile(cds[[paste0("dmel_",k,"_CDS_mRNA")]],probs=q)
  c2 <- quantile(cds[[paste0("dsim_",k,"_CDS_mRNA")]],probs=q)
  c3 <- quantile(cds[[paste0("dmel_",k,"_CDS_Ribo")]],probs=q)
  c4 <- quantile(cds[[paste0("dsim_",k,"_CDS_Ribo")]],probs=q)
  cds2 <- cds[cds[[paste0("dmel_",k,"_CDS_mRNA")]]>c1 & cds[[paste0("dsim_",k,"_CDS_mRNA")]]>c2 &
                cds[[paste0("dmel_",k,"_CDS_Ribo")]]>c3 & cds[[paste0("dsim_",k,"_CDS_Ribo")]]>c4,]
  uorf2 <- uorf[uorf$transcriptID %in% cds2$FBtr,]
  list_table1_HEG[[k]] <- cds2$FBtr
  list_table1_HEG_uorf[[k]] <- uorf2$uorf_id
}
