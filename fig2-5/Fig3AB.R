#### fig 3A: uORF TE vs CDS TE####
library(ggplot2)
mytheme <- theme_classic(base_size = 26) + theme(
  axis.text = element_text(color = 'black'),
  strip.background = element_blank(),
  plot.title = element_text(hjust = 0.5),
  plot.subtitle = element_text(hjust = 0.5),
  legend.text=element_text(size=9,face = "italic")
  #,axis.text.x = element_text(angle = 45,vjust = 0.9, hjust=1)
)

setwd("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/Table1/")
myfiles<-list.files(pattern = "Gamma.rpkm0.1.3.csv")
files_name<-gsub(".rpkm0.1.3.csv","",myfiles)
mystages<-c("0-2h_embryo","12-24h_embryo","2-6h_embryo","6-12h_embryo","female_body","female_head","larva","male_body","male_head","pupa")
mystages_order<-c("0-2h_embryo","2-6h_embryo","6-12h_embryo","12-24h_embryo","larva","pupa","female_body","female_head","male_body","male_head")

mycor<-data.frame(matrix(rep(0,20),nrow=2),row.names = c("Dmel","Dsim"))
colnames(mycor)<-mystages
myp<-data.frame(matrix(rep(1,20),nrow=2),row.names = c("Dmel","Dsim"))
colnames(myp)<-mystages

for (i in 1:length(myfiles)) {
  x<-fread(myfiles[i],header = T,stringsAsFactors = F)
  assign(files_name[i],x)
  round(cor.test(x$mel_lte_cds,x$mel_lte_uorf,method = "spearman")$estimate,3)->mycor[1,i]
  print(cor.test(x$mel_lte_cds,x$mel_lte_uorf,method = "spearman")$`p.value`)
  round(cor.test(x$sim_lte_cds,x$sim_lte_uorf,method = "spearman")$estimate,3)->mycor[2,i]
  print(cor.test(x$sim_lte_cds,x$sim_lte_uorf,method = "spearman")$`p.value`)
}
mycor[,mystages_order]->mycor
myp[,mystages_order]->myp

as.data.table(melt(mycor))->tmp
names(tmp)<-c("Stages","cor")
tmp[,species:=rep(c("Dmel","Dsim"),10)]
tmp$Stages<-factor(tmp$Stages,levels = rev(mystages_order))
tmp$species<-factor(tmp$species,levels = c("Dsim","Dmel"))
ggplot(tmp, aes(x = Stages, y = cor,fill=species))+
  geom_bar(position="dodge", stat="identity")+
  scale_fill_manual(values = c("cyan3","firebrick3"))+
  coord_flip()+
  labs(x = 'Stages', y = 'Rho', color = NULL)+
  mytheme+theme(axis.line = element_line(size = 1.2),axis.ticks=element_line(size=1.2),axis.text = element_text(color = 'black'),legend.position = "none")

i<-9
x<-fread(myfiles[i],header = T,stringsAsFactors = F)
ggplot(x, aes(x=mel_lte_cds, y=mel_lte_uorf)) +
  geom_point(size=3,shape=16,color='firebrick3',alpha=0.07)+
  geom_smooth(method='lm',color="black",linetype="dashed", size=0.8, se=FALSE)+
  coord_cartesian(xlim = c(-10, 5),ylim = c(-10, 5))+
  labs(x = 'CDS log2(TE)', y = 'uORF log2(TE)', color = NULL)+
  ggtitle(paste("D.mel",mystages[i],sep=" "))+
  mytheme+theme(axis.line = element_line(size = 1.2),axis.ticks=element_line(size=1.2),axis.text = element_text(color = 'black'))
ggplot(x, aes(x=sim_lte_cds, y=sim_lte_uorf)) +
  geom_point(size=3,shape=16,color="cyan3",alpha=0.07)+
  geom_smooth(method='lm',color="black",linetype="dashed", size=0.8, se=FALSE)+
  coord_cartesian(xlim = c(-10, 5),ylim = c(-10, 5))+
  labs(x = 'CDS log2(TE)', y = 'uORF log2(TE)', color = NULL)+
  ggtitle(paste("D.sim",mystages[i],sep=" "))+
  mytheme+theme(axis.line = element_line(size = 1.2),axis.ticks=element_line(size=1.2),axis.text = element_text(color = 'black'))

#### fig3B: delt_TE comparsion: uORF vs CDS ####
myfiles<-list.files(path = "~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/Table1/",pattern = "Gamma.rpkm0.1.3.csv") 
myfiles<-myfiles[c(1,3,4,2,7,10,5,8,6,9)] # 按 stage重排顺序
files_name<-gsub(".rpkm0.1.3.csv", "", myfiles)
files_name2<-gsub("_Gamma","",files_name)
files_name2 # 确保 sample 顺序是一致的

total<-data.table()
for (i in 1:length(myfiles)) {
  x<-fread(paste0("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/Table1/", myfiles[i]), header = T)
  sel_col<-grepl("tr|id|uorf", names(x)); x_uorf<-x[,..sel_col]; names(x_uorf)<-gsub("_uorf","",names(x_uorf))
  x_uorf[,c("tr_id","cata"):= .(gsub("_.+", "", id),"uORF")]
  
  sel_col<-grepl("tr|id|cds", names(x)); 
  x_cds<-x[,..sel_col]; names(x_cds)<-gsub("_cds","",names(x_cds)); x_cds[,c("tr_id","cata"):= .(gsub("_.+", "", tr),"CDS")]
  x_cds2<-x_cds[!duplicated(tr_id)] # 去重
  
  x1<-rbind(x_uorf, x_cds2); x1[,stages:=files_name2[i]]
  total<-rbind(total, x1)
}

# violin plot
total$cata<-factor(total$cata, levels = c("CDS","uORF"))
total[, log2Beta2:=ifelse(abs(log2Beta)>=4, 4, log2Beta)]

ggplot(total, aes(x=cata, y=abs(log2Beta2)))+
  geom_violin(aes(fill=cata, color=cata), width=1, adjust = 1.5, linewidth=1.2)+
  geom_boxplot(width=0.1, outlier.shape = NA, fatten = 2, lwd=1.2)+
  # scale_color_manual(name = NULL,values = c(RColorBrewer::brewer.pal(3, 'Dark2')[2], 'grey40'),breaks = c('Clock', 'Others'),labels = c('Circadian genes, 152', 'Other genes, 13,756')) +
  scale_color_manual(values = c("#E04643", "#686F76"))+
  scale_fill_manual(values = alpha(c("#E04643", "#686F76"), 0.8))+
  labs(x = ' ', y = 'abs(TE log2FC)') + 
  coord_cartesian(ylim = c(0, 4), expand = 0) +
  facet_wrap(~stages,nrow=2, scales = "fixed", labeller=labeller(stages = c("em02" = "embryo 0-2 h", "em26" = "embryo 2-6 h", "em612" = "embryo 6-12 h", "em1224" = "embryo 12-24 h","larva" = "larva", 
                                                                            "pupa" = "pupa", "fem" = "female body", "mal" = "male body", "FH" = "female head", "MH" = "male head")))+ 
  mytheme + theme(legend.position="none")


