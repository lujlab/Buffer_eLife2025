#### Fig. 6B-C ####
library(data.table); library(readxl); library(ggplot2)
std <- function(x) sd(x)/sqrt(length(x))
mytheme <- theme_classic(base_size = 18) + theme(
  axis.text = element_text(color = 'black'),
  strip.background = element_blank(),
  plot.title = element_text(hjust = 0.5),
  plot.subtitle = element_text(hjust = 0.5),
  legend.text=element_text(size=9,face = "italic") #设置图例字体的大小及字体https://ggplot2.tidyverse.org/articles/ggplot2-specs.html
  #,laxis.text.x = element_text(angle = 45,vjust = 0.9, hjust=1)
)

tmp<-fread("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig6/PM_ratio.csv",header = T)
rep_mean_PM_ratio_25<-unique(tmp[sample3=="25_w1118" & gene=="bcd"]$rep_mean_PM_ratio)
rep_mean_PM_ratio_29<-unique(tmp[sample3=="29_w1118" & gene=="bcd"]$rep_mean_PM_ratio)
tmp[,nor_mean_PM_ratio:=ifelse(temp==25,mean_PM_ratio/rep_mean_PM_ratio_25, mean_PM_ratio/rep_mean_PM_ratio_29)]
tmp[,c("rep_nor_mean_PM_ratio","rep_nor_std_PM_ratio"):=.(mean(nor_mean_PM_ratio),std(nor_mean_PM_ratio)),by=.(sample3,gene)]
tmp$line<-factor(tmp$line, levels = c("w1118", "D9", "D12"))
ggplot(tmp[gene=="bcd"], aes(x=temp, y=rep_nor_mean_PM_ratio,fill=line)) +
  geom_bar(aes(fill = line,group=line),color="black",stat="identity",position = position_dodge(),width=0.8)+
  scale_fill_manual(values = c("#000000", "#606060", "#E0E0E0"))+
  geom_errorbar(aes(ymin = rep_nor_mean_PM_ratio - rep_nor_std_PM_ratio, ymax = rep_nor_mean_PM_ratio + rep_nor_std_PM_ratio,color=line),color="black",
                width = 0.2, position = position_dodge(0.8))+
  #scale_color_manual(values = c("#000000", "#606060", "#E0E0E0"))+
  labs(x = '', y = 'P-to-M ratio',color = NULL)+
  #coord_cartesian(ylim = c(0, 3))+
  mytheme+theme_classic(base_size = 26,base_line_size = 1.2)

t.test(jj2[sample3=="25_w1118"&gene=="bcd"]$mean_PM_ratio,jj2[sample3=="25_D9"&gene=="bcd"]$mean_PM_ratio) # 0.04239
t.test(jj2[sample3=="25_w1118"&gene=="bcd"]$mean_PM_ratio,jj2[sample3=="25_D12"&gene=="bcd"]$mean_PM_ratio) # 0.1222
t.test(jj2[sample3=="29_w1118"&gene=="bcd"]$mean_PM_ratio,jj2[sample3=="29_D9"&gene=="bcd"]$mean_PM_ratio) # 0.0004259
t.test(jj2[sample3=="29_w1118"&gene=="bcd"]$mean_PM_ratio,jj2[sample3=="29_D12"&gene=="bcd"]$mean_PM_ratio) #  0.006377

#### Fig. 6D ####
# these data (renilla/firefly) were processed in Dual_luciferase.xlx, convenience for data processing
hh<-data.table(bcd_wt1=c(1.932999628,1.905359655,1.580222741,1.769386964,1.641132641,1.841325247),
               bcd_mut1=c(3.987389376,3.358424304,3.920618589,3.284072618,3.066943889,2.655794615),
               bcd_wt2=c(1.932999628,1.905359655,1.580222741,1.769386964,1.641132641,1.841325247), 
               bcd_mut2=c(2.76925026,3.675310296,3.654395316,3.503363354,3.757020648,3.795057631))
hh1<-melt(hh)
names(hh1)[1]<-"type"
hh1[,c("line","wm"):=.(gsub("_(wt|mut)","",type),gsub("\\d+","",gsub("[a-zA-Z]+_","",type)))]
hh1[,wt_mean:=mean(value[wm=="wt"]),by=.(line)]
hh1[,value_nor:=value/wt_mean]
hh1[,c("value_nor_mean","value_nor_std"):=.(mean(value_nor),std(value_nor)),by=.(type)]
t.test(hh1[type=="bcd_wt1"]$value,hh1[type=="bcd_mut1"]$value) # 0.0003648
t.test(hh1[type=="bcd_wt2"]$value,hh1[type=="bcd_mut2"]$value) # 3.09e-05

hh1$line<-factor(hh1$line)
hh1$wm<-factor(hh1$wm,levels = c("wt","mut"))
hh1[grep("bcd",type),]->hh2
hh2[grep("bcd_wt2",type,invert = T)]->hh2
ggplot(hh2, aes(x=type, y=value_nor_mean)) +
  geom_bar(aes(fill=type),color=NA,stat="identity",position = position_dodge(),width=0.6)+ 
  geom_errorbar(aes(ymin = value_nor_mean - value_nor_std, ymax = value_nor_mean + value_nor_std),color="black",
                width = 0.2, position = position_dodge(0.6))+
  geom_jitter(aes(y=value_nor),color="black", position = position_jitter(width = 0.1),size=1.4,alpha=0.8)+
  labs(x = 'Gene', y = 'Relative luciferase activity',color = NULL)+
  mytheme + theme(axis.text.y = element_text(angle = 90))

#### Fig. 6E-F ####
library(UpSetR)
## upset 29
hh<-readRDS("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig6/RNASeq/dcounts_LFC_all_29.rds")
for (i in 1:length(hh)) {assign(names(hh)[i],as.data.table(hh[[i]]))}
listInput<-list(dcount_lfc_0_2[padj<0.05&abs(log2FoldChange)>0.59,gene],
                dcount_lfc_2_6[padj<0.05&abs(log2FoldChange)>0.59,gene],
                dcount_lfc_6_12[padj<0.05&abs(log2FoldChange)>0.59,gene],
                dcount_lfc_12_24[padj<0.05&abs(log2FoldChange)>0.59,gene])
names(listInput)<-c("0-2h embryo","2-6h embryo","6-12h embryo","12-24h embryo")
upset(fromList(listInput), order.by = "freq",sets = rev(names(listInput)),keep.order=T,mainbar.y.label = "Intersection number of DEGs",sets.x.label = "DEGs number",
      point.size = 3,text.scale = c(rep(2,2,2,2,2,2)))

## upset 25
hh<-readRDS("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig6/RNASeq/dcounts_LFC_all_25.rds")
for (i in 1:length(hh)) {assign(names(hh)[i],as.data.table(hh[[i]]))}
listInput<-list(dcount_lfc_0_2[padj<0.05&abs(log2FoldChange)>0.59,gene],
                dcount_lfc_2_6[padj<0.05&abs(log2FoldChange)>0.59,gene],
                dcount_lfc_6_12[padj<0.05&abs(log2FoldChange)>0.59,gene],
                dcount_lfc_12_24[padj<0.05&abs(log2FoldChange)>0.59,gene])
names(listInput)<-c("0-2h embryo","2-6h embryo","6-12h embryo","12-24h embryo")
upset(fromList(listInput), order.by = "freq",sets = rev(names(listInput)),keep.order=T,mainbar.y.label = "Intersection number of DEGs",sets.x.label = "DEGs number",
      point.size = 3,text.scale = c(rep(2,2,2,2,2,2)))

## GO analysis
dcount_lfc_0_2[,DEG:=ifelse(padj<0.05&log2FoldChange>0.59,1,ifelse(padj<0.05&log2FoldChange < -0.59,-1,0))]
dcount_lfc_2_6[,DEG:=ifelse(padj<0.05&log2FoldChange>0.59,1,ifelse(padj<0.05&log2FoldChange < -0.59,-1,0))]
dcount_lfc_6_12[,DEG:=ifelse(padj<0.05&log2FoldChange>0.59,1,ifelse(padj<0.05&log2FoldChange < -0.59,-1,0))]
dcount_lfc_12_24[,DEG:=ifelse(padj<0.05&log2FoldChange>0.59,1,ifelse(padj<0.05&log2FoldChange < -0.59,-1,0))]

multimerge(list(dcount_lfc_0_2[,c(1,12)],
                dcount_lfc_2_6[,c(1,12)],
                dcount_lfc_6_12[,c(1,12)],
                dcount_lfc_12_24[,c(1,12)]))->DEG
DEG[is.na(DEG)]<-0
names(DEG)[-1]<-c("e02","e26","e612","e1224")
DEG$num_all<-apply(DEG[,2:5],1,function(x) sum(x!=0))
DEG$num_up<-apply(DEG[,2:5],1,function(x) sum(x==1))
DEG$num_dn<-apply(DEG[,2:5],1,function(x) sum(x== -1))

table(DEG$e02)
3884/nrow(rpkm_0_2[rowMeans(rpkm_0_2)>1,]) # 0.54
2358/nrow(rpkm_2_6[rowMeans(rpkm_2_6)>1,]) # 0.29
2901/nrow(rpkm_6_12[rowMeans(rpkm_6_12)>1,]) # 0.31
4164/nrow(rpkm_12_24[rowMeans(rpkm_12_24)>1,]) # 0.41

write.table(DEG$gene,"bg_gene.txt",row.names = F,col.names = F,quote = F,sep = "\t")
write.table(DEG[num_all >= 1,]$gene,"DEG_all_1stage_gene.txt",row.names = F,col.names = F,quote = F,sep = "\t")
write.table(DEG[num_all >= 2,]$gene,"DEG_all_2stage_gene.txt",row.names = F,col.names = F,quote = F,sep = "\t")
write.table(DEG[num_all >= 3,]$gene,"DEG_all_3stage_gene.txt",row.names = F,col.names = F,quote = F,sep = "\t")
write.table(DEG[num_all >= 4,]$gene,"DEG_all_4stage_gene.txt",row.names = F,col.names = F,quote = F,sep = "\t")
write.table(DEG[num_dn >= 1,]$gene,"DEG_dn_1stage_gene.txt",row.names = F,col.names = F,quote = F,sep = "\t")
write.table(DEG[num_dn >= 2,]$gene,"DEG_dn_2stage_gene.txt",row.names = F,col.names = F,quote = F,sep = "\t")
write.table(DEG[num_dn >= 3,]$gene,"DEG_dn_3stage_gene.txt",row.names = F,col.names = F,quote = F,sep = "\t")
write.table(DEG[num_dn >= 4,]$gene,"DEG_dn_4stage_gene.txt",row.names = F,col.names = F,quote = F,sep = "\t")

library("clusterProfiler") ; library("org.Dm.eg.db"); library(enrichplot); library(data.table)
bg<-fread("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig6/RNASeq/bg_gene.txt",header = F,stringsAsFactors = F)
names(bg)<-"gene"

myfiles<-list.files(pattern = "gene.txt")
files_name<-gsub("_gene.txt","",myfiles)
for (i in 1:length(myfiles)) {
  hh<-fread(myfiles[i],header = F,stringsAsFactors = F)
  names(hh)<-"gene"
  assign(files_name[i],hh)
  
  enrich_go <- enrichGO(
    gene = hh$gene,
    OrgDb = org.Dm.eg.db, 
    universe= hh$gene, 
    keyType = "FLYBASE",
    ont = "BP",
    pAdjustMethod = "BH",
    pvalueCutoff  = 1,
    qvalueCutoff  = 1,
    readable      = TRUE
  )
  dotplot(enrich_go, x='GeneRatio',showCategory = 20,title = paste(files_name[i],"_GO"))
}


## bcd target
library(readxl)
hh1<-read_excel("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig6/RNASeq/CHIP-chip-bcd.xls",sheet = 1,skip = 1,col_names = T)
names(hh1)<-c("interval_ID","chr","start","end","region_score","peak_pos","peak_score","closet_gene","closet_dist","close_trans_gene","close_trans_dist")
hh2<-read_excel("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig6/RNASeq/CHIP-chip-bcd.xls",sheet = 2,skip = 1,col_names = T)
names(hh2)<-c("interval_ID","chr","start","end","region_score","peak_pos","peak_score","closet_gene","closet_dist","close_trans_gene","close_trans_dist")

hh1[hh1$close_trans_gene%in%hh2$close_trans_gene,]->hh3
as.data.frame(hh3[order(hh3$region_score,hh3$peak_score,decreasing = T),]$close_trans_gene[1:200])->bcd_target
names(bcd_target)<-"target"
DEG[,target:=ifelse(gene%in%bcd_target$target,1,0)]
## target enrichment in DEGs/NonDEGs for each stages
mydtt<-data.frame(DEG=rep(0,4),target_DEG=rep(0,4),NonDEG=rep(0,4),target_NonDEG=rep(0,4))
rownames(mydtt)<-c("e02","e26","e612","e1224")
if (1) {
  nrow(DEG[e02!=0])->mydtt[1,1] # DEGs
  nrow(DEG[target!=0&e02!=0])->mydtt[1,2] # target in DEGs
  nrow(DEG[e02==0])->mydtt[1,3] # Non-DEGs
  nrow(DEG[target!=0&e02==0])->mydtt[1,4] # target in Non-DEGs
  nrow(DEG[e26!=0])->mydtt[2,1] # DEGs
  nrow(DEG[target!=0&e26!=0])->mydtt[2,2] # target in DEGs
  nrow(DEG[e26==0])->mydtt[2,3] # Non-DEGs
  nrow(DEG[target!=0&e26==0])->mydtt[2,4] # target in Non-DEGs
  nrow(DEG[e612!=0])->mydtt[3,1] # DEGs
  nrow(DEG[target!=0&e612!=0])->mydtt[3,2] # target in DEGs
  nrow(DEG[e612==0])->mydtt[3,3] # Non-DEGs
  nrow(DEG[target!=0&e612==0])->mydtt[3,4] # target in Non-DEGs
  nrow(DEG[e1224!=0])->mydtt[4,1] # DEGs
  nrow(DEG[target!=0&e1224!=0])->mydtt[4,2] # target in DEGs
  nrow(DEG[e1224==0])->mydtt[4,3] # Non-DEGs
  nrow(DEG[target!=0&e1224==0])->mydtt[4,4] # target in Non-DEGs
  
}

mydtt$enrich_DEG<-mydtt$target_DEG/mydtt$DEG
mydtt$enrich_NonDEG<-mydtt$target_NonDEG/mydtt$NonDEG
mydtt$pvalue<-0
for (i in 1:4) { chisq.test(matrix(unlist(mydtt[i,1:4]),byrow = T,nrow = 2))$`p.value`->mydtt[i,7] }
mydtt$enrich_score<-mydtt$enrich_DEG/mydtt$enrich_NonDEG

mydtt$Stages<-rownames(mydtt)
mydtt$Stages<-factor(mydtt$Stages,level=c("e02","e26","e612","e1224"))
mytheme <- theme_classic(base_size = 14) + theme(
  axis.text = element_text(color = 'black'),
  strip.background = element_blank(),
  plot.title = element_text(hjust = 0.5),
  plot.subtitle = element_text(hjust = 0.5),
  legend.text=element_text(size=9,face = "italic"),
  axis.text.x = element_text(angle = 45,vjust = 0.9, hjust=1)
)
ggplot(mydtt, aes(x = Stages, y = enrich_score))+
  geom_bar(position="dodge", stat="identity",fill="gray")+
  labs(x = '', y = 'Targets enrichment', color = NULL)+
  coord_cartesian(ylim = c(0, 3)) + 
  geom_abline(intercept = 1, slope = 0,color="black",linetype="dashed", size=0.4)+
  mytheme

## targets proportion in DEGs/NonDEGs at least n samples
as.data.frame(rbind(table(DEG$target),table(DEG[num_all>=1]$target),table(DEG[num_all>=2]$target),table(DEG[num_all>=3]$target),table(DEG[num_all>=4]$target)))->mydtt
rownames(mydtt)<-c("bg","num_all_1","num_all_2","num_all_3","num_all_4")
colnames(mydtt)<-c("non-target","targets")
mydtt$pvalue<-1
chisq.test(mydtt[c(1,2),1:2])$`p.value`->mydtt[2,3] #fisher.test pvalue稍微小一点
chisq.test(mydtt[c(1,3),1:2])$`p.value`->mydtt[3,3]
chisq.test(mydtt[c(1,4),1:2])$`p.value`->mydtt[4,3]
chisq.test(mydtt[c(1,5),1:2])$`p.value`->mydtt[5,3]

mydtt$type<-rownames(mydtt)
as.data.table(melt(mydtt[,-3],id.vars="type"))->mydtt2
names(mydtt2)[-1]<-c("categories","number")
mydtt2[,categories:=ifelse(categories=="non-target","Non-target","Bcd-target")]

