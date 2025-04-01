library(pheatmap); library(ggplot2); library(data.table)
setwd("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig1/")

CV <- function(x) sd(x)/mean(x)

mytheme <- theme_classic(base_size = 16) + theme(
  axis.text = element_text(color = 'black'),
  strip.background = element_blank(),
  plot.title = element_text(hjust = 0.5),
  plot.subtitle = element_text(hjust = 0.5),
  legend.text=element_text(size=9,face = "italic")
  #,axis.text.x = element_text(angle = 45,vjust = 0.9, hjust=1)
)

#### single uORF initiation ####
## lambda distribution ####
tmp1<-fread("./lambda1000_rexp__P_s2p_u__P_s2p_m__double_kicking_v7.txt",header = T,stringsAsFactors = F)
tmp1$Distribution<-"Exponent"
tmp1[P_s2p_u==0.4&P_s2p_m==0.4]->tmp1
tmp3<-fread("./lambda1000_runif__P_s2p_u__P_s2p_m__double_kicking_v7.txt",header = T,stringsAsFactors = F)
tmp3$Distribution<-"Uniform"
tmp3[P_s2p_u==0.4&P_s2p_m==0.4]->tmp3
rbind(tmp1,tmp3)->tmp
tmp$Distribution<-factor(tmp$Distribution)
ggplot(tmp, aes(x=Lambda,fill=Distribution,color=Distribution)) + 
  geom_density(aes(y=..density..),alpha=0.4)+
  coord_cartesian(xlim=c(0,0.1))+
  labs(x = 'R-in', y = 'Density')+theme_classic(base_size = 24)

## TE level and CV ####   
myfiles<-list.files(path="~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig1/", pattern = "lambda1000.*P_s2p_u__P_s2p_m.*v7.txt")
files_name<-c("exp_double","exp_down","exp_up","unif_double","unif_down","unif_up")
for (j in 1:length(myfiles)) {
  jj<-fread(myfiles[j],header = T,stringsAsFactors = F)
  jj[,mrna:=10/Lambda]
  jj[,cds_pro:=PRNA_finished_m*mrna]; jj[,uorf_pro:=PRNA_finished_u*mrna]  
  jj[Lambda!=0 & P_s2p_u!=1 & P_s2p_m!=0,]->hh
  hh[,.(Lambda_cv=CV(Lambda),
        SRNA_started_cv=CV(SRNA_started),
        SRNA_passed_au_cv=CV(SRNA_passed_au),
        PRNA_started_u_cv=CV(PRNA_started_u),
        PRNA_dropped_u_cv=CV(PRNA_dropped_u),
        PRNA_finished_u_cv=CV(PRNA_finished_u),
        SRNA_passed_bm_cv=CV(SRNA_passed_bm),
        PRNA_started_m_cv=CV(PRNA_started_m),
        PRNA_dropped_m_cv=CV(PRNA_dropped_m),
        PRNA_finished_m_cv=CV(PRNA_finished_m),
        SRNA_dropped_cv=CV(SRNA_dropped),
        SRNA_end_cv=CV(SRNA_end),
        mrna_cv=CV(mrna),
        cds_pro_cv=CV(cds_pro),
        uorf_pro_cv=CV(uorf_pro),
        Lambda_median=median(Lambda),
        SRNA_started_median=median(SRNA_started),
        SRNA_passed_au_median=median(SRNA_passed_au),
        PRNA_started_u_median=median(PRNA_started_u),
        PRNA_dropped_u_median=median(PRNA_dropped_u),
        PRNA_finished_u_median=median(PRNA_finished_u),
        SRNA_passed_bm_median=median(SRNA_passed_bm),
        PRNA_started_m_median=median(PRNA_started_m),
        PRNA_dropped_m_median=median(PRNA_dropped_m),
        PRNA_finished_m_median=median(PRNA_finished_m),
        SRNA_dropped_median=median(SRNA_dropped),
        SRNA_end_median=median(SRNA_end),
        mrna_median=median(mrna),
        cds_pro_median=median(cds_pro),
        uorf_pro_median=median(uorf_pro)),by=.(P_s2p_u,P_s2p_m)][order(P_s2p_m),]->hh1
  hh1[hh1$P_s2p_u <= 0.5,]->hh1 # version2,I-uORF<=0.5
  
  myvaribles<-names(hh1)[c(-1,-2)]
  #### CV of CDS TE (PRNA_finished_m) ####
  i<-10; myvaribles[i] 
  #for (i in 1:length(myvaribles)) {
  x<-dcast(hh1,P_s2p_u~P_s2p_m,value.var = myvaribles[i])
  as.data.frame(x)->x
  rownames(x)<-x$P_s2p_u
  x[,-1]->x
  assign(paste0(files_name[j],"_TE_CV_CDS_1uORF"),x)
  # pdf(file=paste0("~/Desktop/uorf_ko/uORF_gain_loss/modeling/CV_median_LFC_TE/",paste(files_name[j],myvaribles[i]),"_heatmap.pdf"))
  pheatmap(x,main=paste(files_name[j],myvaribles[i]),fontsize = 20,display_numbers = F,number_format = "%.2f",fontsize_number = 15,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
  # dev.off()
  #}
  
  #### median of CDS TE ####
  i<-25; myvaribles[i] 
  #for (i in 1:length(myvaribles)) {
  x<-dcast(hh1,P_s2p_u~P_s2p_m,value.var = myvaribles[i])
  as.data.frame(x)->x
  rownames(x)<-x$P_s2p_u
  x[,-1]->x
  assign(paste0(files_name[j],"_TE_median_CDS_1uORF"),x)
  pheatmap(x/1000,main=paste(files_name[j],myvaribles[i]),fontsize = 20,display_numbers = F,number_format = "%.2f",fontsize_number = 15,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
  #}
  
  #### case plot: CDS TE CV and level distribution ####
  # NO uORF
  hh[P_s2p_u==0&P_s2p_m==0.8]->tmp2
  tmp2$Lambda<-tmp2$Lambda*10^6
  tmp3<-melt.data.table(tmp2,id.vars = "sim_ID")
  names(tmp3)<-c("id","parameter","value")
  tmp3<-tmp3[parameter%in%c("Lambda","SRNA_started","SRNA_passed_bm","PRNA_finished_m"),]
  p<-ggplot(tmp3[parameter=="PRNA_finished_m"], aes(x=value/1000,fill=parameter,color=parameter)) + 
    #geom_histogram(aes(y = ..count..), binwidth = 100, colour= "black", fill = "white")+
    geom_density(aes(y=..count..),alpha=0.4)+
    coord_cartesian(xlim=c(0,20000/1000),ylim = c(0,400))+
    #geom_vline(xintercept=TE_gamma_median, color="black",linetype="dashed", size=1)+
    labs(x = 'Value', y = 'Density',title=paste0(files_name[j],"_NO_uORF"))+theme_classic(base_size = 24)+
    theme(legend.title=element_blank())+theme(legend.position="none")
  print(p)
  c(CV(tmp2$Lambda),CV(tmp2$SRNA_started),CV(tmp2$SRNA_passed_bm),CV(tmp2$PRNA_finished_m),median(tmp2$PRNA_finished_m))
  
  # with uORF
  hh[P_s2p_u==0.4&P_s2p_m==0.8]->tmp2
  tmp2$Lambda<-tmp2$Lambda*10^6
  tmp3<-melt.data.table(tmp2,id.vars = "sim_ID")
  names(tmp3)<-c("id","parameter","value")
  tmp3<-tmp3[parameter%in%c("Lambda","SRNA_started","SRNA_passed_bm","PRNA_finished_m"),]
  p<-ggplot(tmp3[parameter=="PRNA_finished_m"], aes(x=value/1000,fill=parameter,color=parameter)) + 
    #geom_histogram(aes(y = ..count..), binwidth = 100, colour= "black", fill = "white")+
    geom_density(aes(y=..count..),alpha=0.4)+
    coord_cartesian(xlim=c(0,20000/1000),ylim = c(0,400))+
    #geom_vline(xintercept=TE_gamma_median, color="black",linetype="dashed", size=1)+
    labs(x = 'Value', y = 'Density',title=paste0(files_name[j],"_with_uORF"))+theme_classic(base_size = 24)+
    theme(legend.title=element_blank())+theme(legend.position="none")
  print(p)
  c(CV(tmp2$Lambda),CV(tmp2$SRNA_started),CV(tmp2$SRNA_passed_bm),CV(tmp2$PRNA_finished_m),median(tmp2$PRNA_finished_m))
  
  #### uORF_TE_LFC vs CDS_TE_LFC ####
  jj[P_s2p_u!=0][P_s2p_u!=1][P_s2p_m!=0]->hh1 #remove uORF no translated and CDS no translated
  hh1[,median_lambda:=median(sort(Lambda)[-1]),by=.(P_s2p_u,P_s2p_m)] # this for even number of lambda; median(Lambda) for odd number
  hh1[,c("median_PRNA_finished_u","median_PRNA_finished_m","median_mrna","median_cds_pro","median_uorf_pro"):=
        .(PRNA_finished_u[Lambda==median_lambda],
          PRNA_finished_m[Lambda==median_lambda],
          mrna[Lambda==median_lambda],
          cds_pro[Lambda==median_lambda],
          uorf_pro[Lambda==median_lambda]),by=.(P_s2p_u,P_s2p_m)]
  hh1[,c("lfc_lambda","lfc_PRNA_finished_u","lfc_PRNA_finished_m","lfc_mrna","lfc_cds_pro","lfc_uorf_pro"):=
        .(log2(Lambda/median_lambda),
          log2(PRNA_finished_u/median_PRNA_finished_u),
          log2(PRNA_finished_m/median_PRNA_finished_m),
          log2(mrna/median_mrna),
          log2(cds_pro/median_cds_pro),
          log2(uorf_pro/median_uorf_pro)),by=.(P_s2p_u,P_s2p_m)]
  hh1[,TE_gamma:=abs(lfc_PRNA_finished_m)-abs(lfc_PRNA_finished_u)] # magnitude of CDS change vs uORF TE change
  
  
  hh2<-hh1[,.(cor_TE_LFC=round(cor.test(lfc_PRNA_finished_u,lfc_PRNA_finished_m,method = "spearman")$estimate,3),
              cor_pro_LFC=round(cor.test(lfc_uorf_pro,lfc_cds_pro,method = "spearman")$estimate,3),
              median_TE_gamma=median(TE_gamma)),by=.(P_s2p_u,P_s2p_m)]
  
  hh2[hh2$P_s2p_u<0.6,]->hh2 ## version2,I-uORF<=0.5
  myvaribles<-names(hh2)[c(-1,-2)]
  i<-1; myvaribles[i] # LFC cor
  # for (i in 1:length(myvaribles)) {
  x<-dcast(hh2,P_s2p_u~P_s2p_m,value.var = myvaribles[i])
  as.data.frame(x)->x
  rownames(x)<-x$P_s2p_u
  x[,-1]->x
  pheatmap(x,main=paste(files_name[j],myvaribles[i]),fontsize = 20,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
  #}
  
  # delt_LFC
  i<-3; myvaribles[i]
  x<-dcast(hh2,P_s2p_u~P_s2p_m,value.var = myvaribles[i])
  as.data.frame(x)->x
  rownames(x)<-x$P_s2p_u
  x[,-1]->x
  pheatmap(x,main=paste(files_name[j],myvaribles[i]),fontsize = 15,col=colorRampPalette(c("blue","white"))(50),display_numbers = 0,number_format = "%.3f",fontsize_number = 15,cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
  
  #case plot
  as.data.table(hh1[P_s2p_u==0.2&P_s2p_m==0.8])->tmp
  cor.test(tmp$lfc_PRNA_finished_m,tmp$lfc_PRNA_finished_u,method="spearman")
  p<-ggplot(tmp, aes(x=lfc_PRNA_finished_u, y=lfc_PRNA_finished_m)) + 
    geom_point(size=4,shape=20,alpha=0.05)+ 
    coord_cartesian(ylim = c(-3,2),xlim=c(-3,2)) +
    #geom_abline(intercept = 0, slope = 1,color="black",linetype="dashed")+  
    geom_smooth(method='lm', se=F,formula= y~x,col="red",linetype="dashed")+
    labs(x = 'TE log2FC of uORF', y = 'TE log2FC of CDS',title=paste(files_name[j],"TE LFC"))+
    mytheme+
    theme_classic(base_size = 24)
  print(p)
  
  TE_gamma_median<-median(tmp$TE_gamma)
  p1<-ggplot(tmp, aes(x=TE_gamma)) + 
    geom_density(fill="blue",color="blue",alpha=0.4)+
    coord_cartesian(xlim=c(-0.6,0.3))+
    geom_vline(xintercept=TE_gamma_median, color="black",linetype="dashed", size=1)+
    labs(x = 'Gamma', y = 'Density',title=paste(files_name[j],"Gamma"))+theme_classic(base_size = 24)+
    theme(legend.position="none")
  print(p1)
}

## quantatively mearsure TE level change and CV change of uorf or no uorf ####
## TE level change:  uorf vs no uorf : I_uorf from 0.1 to 0.5: ~40% to ~80% reduction
myfiles2<-ls(pattern = "TE_median_CDS")
files_name2<-gsub("_TE_median_CDS_1uORF","",myfiles2)
for (i in 1:length(myfiles2)) {
  y<-get(myfiles2[i]); y$I_uorf<-rownames(y)
  y1<-melt.data.table(as.data.table(y),id.vars = "I_uorf"); names(y1)<-c("I_uorf", "I_cds", "te_median")
  y1[,te_median_nouorf := te_median[I_uorf==0], by=.(I_cds)]
  y1[,te_median_change := 100*(te_median_nouorf - te_median)/te_median_nouorf,by=.(I_cds)]
  
  y2<-dcast(y1, I_uorf~I_cds, value.var = "te_median_change")
  y2<-as.data.frame(y2)
  rownames(y2)<-y2$I_uorf
  y2[,-1]->y2
  assign(paste0(files_name2[i],"_TE_median_change_CDS_1uORF"), y2)
  pheatmap(y2, main=paste0(files_name2[i],"_TE_median_change_CDS_1uORF"),fontsize = 20,display_numbers = T,number_format = "%.2f",fontsize_number = 15,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
} 

## TE CV change:  uorf vs no uorf : I_uorf from 0.1 to 0.5: ~10% to ~25% reduction
myfiles2<-ls(pattern = "TE_CV_CDS")
files_name2<-gsub("_TE_CV_CDS_1uORF","",myfiles2)
for (i in 1:length(myfiles2)) {
  y<-get(myfiles2[i]); y$I_uorf<-rownames(y)
  y1<-melt.data.table(as.data.table(y),id.vars = "I_uorf"); names(y1)<-c("I_uorf", "I_cds", "te_cv")
  y1[,te_cv_nouorf := te_cv[I_uorf==0], by=.(I_cds)]
  y1[,te_cv_change := 100*(te_cv_nouorf - te_cv)/te_cv_nouorf,by=.(I_cds)]
  
  y2<-dcast(y1, I_uorf~I_cds, value.var = "te_cv_change")
  y2<-as.data.frame(y2)
  rownames(y2)<-y2$I_uorf
  y2[,-1]->y2
  assign(paste0(files_name2[i],"_TE_CV_change_CDS_1uORF"), y2)
  pheatmap(y2, main=paste0(files_name2[i],"_TE_CV_change_CDS_1uORF"),fontsize = 20,display_numbers = T,number_format = "%.2f",fontsize_number = 15,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
} 


#### single uORF length ####
## TE level and CV ####
myfiles<-list.files(pattern = "lambda1000.*len_u.*v7")
files_name<-c("exp_double","exp_down","exp_up","unif_double","unif_down","unif_up")
for (j in 1:length(myfiles)) {
  jj<-fread(myfiles[j],header = T,stringsAsFactors = F)
  jj[,mrna:=10/Lambda]; jj[,cds_pro:=PRNA_finished_m*mrna]; jj[,uorf_pro:=PRNA_finished_u*mrna]
  jj[Lambda!=0&P_s2p_u!=1&P_s2p_m!=0,]->hh
  hh[,.(Lambda_cv=CV(Lambda),
        SRNA_started_cv=CV(SRNA_started),
        SRNA_passed_au_cv=CV(SRNA_passed_au),
        PRNA_started_u_cv=CV(PRNA_started_u),
        PRNA_dropped_u_cv=CV(PRNA_dropped_u),
        PRNA_finished_u_cv=CV(PRNA_finished_u),
        SRNA_passed_bm_cv=CV(SRNA_passed_bm),
        PRNA_started_m_cv=CV(PRNA_started_m),
        PRNA_dropped_m_cv=CV(PRNA_dropped_m),
        PRNA_finished_m_cv=CV(PRNA_finished_m),
        SRNA_dropped_cv=CV(SRNA_dropped),
        SRNA_end_cv=CV(SRNA_end),
        mrna_cv=CV(mrna),
        cds_pro_cv=CV(cds_pro),
        uorf_pro_cv=CV(uorf_pro),
        Lambda_median=median(Lambda),
        SRNA_started_median=median(SRNA_started),
        SRNA_passed_au_median=median(SRNA_passed_au),
        PRNA_started_u_median=median(PRNA_started_u),
        PRNA_dropped_u_median=median(PRNA_dropped_u),
        PRNA_finished_u_median=median(PRNA_finished_u),
        SRNA_passed_bm_median=median(SRNA_passed_bm),
        PRNA_started_m_median=median(PRNA_started_m),
        PRNA_dropped_m_median=median(PRNA_dropped_m),
        PRNA_finished_m_median=median(PRNA_finished_m),
        SRNA_dropped_median=median(SRNA_dropped),
        SRNA_end_median=median(SRNA_end),
        mrna_median=median(mrna),
        cds_pro_median=median(cds_pro),
        uorf_pro_median=median(uorf_pro)),by=.(Len_u,P_s2p_u)][order(Len_u),]->hh1
  hh1[hh1$P_s2p_u <= 0.5 & hh1$Len_u <= 100,]->hh1 # version2,I-uORF<=0.5 & uorf_length<100 codons
  
  myvaribles<-names(hh1)[c(-1,-2)]
  ## absolute CDS TE (PRNA_finished_m) ####
  i<-25; myvaribles[i] 
  #for (i in 1:length(myvaribles)) {
  x<-dcast(hh1,P_s2p_u~Len_u,value.var = myvaribles[i])
  as.data.frame(x)->x
  rownames(x)<-x$P_s2p_u
  x[,-1]->x
  assign(paste0(files_name[j],"_TE_median_CDS_Len_u_1uORF"),x)
  pheatmap(x,main=paste(files_name[j],myvaribles[i]),fontsize = 20,display_numbers = F,number_format = "%.2f",fontsize_number = 15,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
  #}
  
  ## CV of CDS TE (PRNA_finished_m) ####
  i<-10; myvaribles[i] 
  #for (i in 1:length(myvaribles)) {
  x<-dcast(hh1,P_s2p_u~Len_u,value.var = myvaribles[i])
  as.data.frame(x)->x
  rownames(x)<-x$P_s2p_u
  x[,-1]->x
  assign(paste0(files_name[j],"_TE_CV_CDS_Len_u_1uORF"),x)
  pheatmap(x,main=paste(files_name[j],myvaribles[i]),fontsize = 20,display_numbers = F,number_format = "%.2f",fontsize_number = 15,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
  #}
  
  ## case plot: TE level and CV distribution ####
  # shorter uORF
  hh[P_s2p_u==0.2&Len_u==2]->tmp2
  tmp2$Lambda<-tmp2$Lambda*10^6
  tmp3<-melt.data.table(tmp2,id.vars = "sim_ID")
  names(tmp3)<-c("id","parameter","value")
  tmp3<-tmp3[parameter%in%c("Lambda","SRNA_started","SRNA_passed_bm","PRNA_finished_m"),]
  p<-ggplot(tmp3[parameter=="PRNA_finished_m"], aes(x=value/1000,fill=parameter,color=parameter)) + 
    #geom_histogram(aes(y = ..count..), binwidth = 100, colour= "black", fill = "white")+
    geom_density(aes(y=..count..),alpha=0.4)+
    coord_cartesian(xlim=c(0,12000/1000),ylim = c(0,500))+
    #geom_vline(xintercept=TE_gamma_median, color="black",linetype="dashed", size=1)+
    labs(x = 'Value', y = 'Density',title=paste0(files_name[j],"_short_uORF"))+theme_classic(base_size = 24)+
    theme(legend.title=element_blank())+theme(legend.position="none")
  print(p)
  c(CV(tmp2$Lambda),CV(tmp2$SRNA_started),CV(tmp2$SRNA_passed_bm),CV(tmp2$PRNA_finished_m),median(tmp2$PRNA_finished_m))
  
  #longer uORF
  hh[P_s2p_u==0.2&Len_u==30]->tmp2
  tmp2$Lambda<-tmp2$Lambda*10^6
  tmp3<-melt.data.table(tmp2,id.vars = "sim_ID")
  names(tmp3)<-c("id","parameter","value")
  tmp3<-tmp3[parameter%in%c("Lambda","SRNA_started","SRNA_passed_bm","PRNA_finished_m"),]
  p<-ggplot(tmp3[parameter=="PRNA_finished_m"], aes(x=value/1000,fill=parameter,color=parameter)) + 
    #geom_histogram(aes(y = ..count..), binwidth = 100, colour= "black", fill = "white")+
    geom_density(aes(y=..count..),alpha=0.4)+
    coord_cartesian(xlim=c(0,12000/1000),ylim = c(0,1000))+
    #geom_vline(xintercept=TE_gamma_median, color="black",linetype="dashed", size=1)+
    labs(x = 'Value', y = 'Density',title=paste0(files_name[j],"_longer_uORF"))+theme_classic(base_size = 24)+
    theme(legend.title=element_blank())+theme(legend.position="none")
  print(p)
  c(CV(tmp2$Lambda),CV(tmp2$SRNA_started),CV(tmp2$SRNA_passed_bm),CV(tmp2$PRNA_finished_m),median(tmp2$PRNA_finished_m))
}

## Revision: quantatively mearsure TE level change and CV change of short uorf or long uorf ####
## TE level change:  uorf vs no uorf : l_uorf from 2 to 100: ~10% to ~50% reduction
myfiles2<-ls(pattern = "_TE_median_CDS_Len_u_1uORF")
files_name2<-gsub("_TE_median_CDS_Len_u_1uORF","",myfiles2)
for (i in 1:length(myfiles2)) {
  y<-get(myfiles2[i]); y$I_uorf<-rownames(y)
  y1<-melt.data.table(as.data.table(y),id.vars = "I_uorf"); names(y1)<-c("I_uorf", "l_uorf", "te_median")
  y1[,te_median_shortuorf := te_median[l_uorf==2], by=.(I_uorf)]
  y1[,te_median_change := 100*(te_median_shortuorf - te_median)/te_median_shortuorf, by=.(I_uorf)]
  
  y2<-dcast(y1, I_uorf ~ l_uorf, value.var = "te_median_change")
  y2<-as.data.frame(y2)
  rownames(y2)<-y2$I_uorf
  y2[,-1]->y2
  assign(paste0(files_name2[i],"_TE_median_change_CDS_Len_u_1uORF"), y2)
  pheatmap(y2, main=paste0(files_name2[i],"_TE_median_change_CDS_Len_u_1uORF"),fontsize = 20,display_numbers = T,number_format = "%.2f",fontsize_number = 15,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
} 

## TE CV change:  uorf vs no uorf : l_uorf from 2 to 100: ~10% to ~50% reduction
myfiles2<-ls(pattern = "_TE_CV_CDS_Len_u_1uORF")
files_name2<-gsub("_TE_CV_CDS_Len_u_1uORF","",myfiles2)
for (i in 1:length(myfiles2)) {
  y<-get(myfiles2[i]); y$I_uorf<-rownames(y)
  y1<-melt.data.table(as.data.table(y),id.vars = "I_uorf"); names(y1)<-c("I_uorf", "l_uorf", "te_CV")
  y1[,te_CV_shortuorf := te_CV[l_uorf==2], by=.(I_uorf)]
  y1[,te_CV_change := 100*(te_CV_shortuorf - te_CV)/te_CV_shortuorf, by=.(I_uorf)]
  
  y2<-dcast(y1, I_uorf ~ l_uorf, value.var = "te_CV_change")
  y2<-as.data.frame(y2)
  rownames(y2)<-y2$I_uorf
  y2[,-1]->y2
  assign(paste0(files_name2[i],"_TE_CV_change_CDS_Len_u_1uORF"), y2)
  pheatmap(y2, main=paste0(files_name2[i],"_TE_CV_change_CDS_Len_u_1uORF"),fontsize = 20,display_numbers = T,number_format = "%.2f",fontsize_number = 15,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
} 


#### double uORF ####
# I_cds=0.9, I_uorf1=0~1, I_uorf2=0~1
## plot for TE CV and median of CDS ####
myfiles<-list.files(pattern = "lambda1000.*2uORFs.txt")
files_name<-c("exp_down","unif_down")
for (j in 1:length(myfiles)) {
  jj<-fread(myfiles[j],header = T,stringsAsFactors = F)
  jj[,mrna:=10/Lambda]; jj[,cds_pro:=PRNA_finished_m*mrna]  
  jj[Lambda!=0&P_s2p_u1!=1&P_s2p_u2!=1,]->hh
  hh[,.(Lambda_cv=CV(Lambda),
        SRNA_started_cv=CV(SRNA_started),
        PRNA_finished_u1_cv=CV(PRNA_finished_u1),
        PRNA_finished_u2_cv=CV(PRNA_finished_u2),
        PRNA_started_m_cv=CV(PRNA_started_m),
        PRNA_finished_m_cv=CV(PRNA_finished_m),
        SRNA_end_cv=CV(SRNA_end),
        SRNA_kicked_u1_cv=CV(SRNA_kicked_u1),
        SRNA_kicked_u2_cv=CV(SRNA_kicked_u2),
        SRNA_kicked_m_cv=CV(SRNA_kicked_m),
        mrna_cv=CV(mrna),
        cds_pro_cv=CV(cds_pro),
        Lambda_median=median(Lambda),
        SRNA_started_median=median(SRNA_started),
        SRNA_passed_bm_median=median(SRNA_passed_bm),
        PRNA_started_m_median=median(PRNA_started_m),
        PRNA_dropped_m_median=median(PRNA_dropped_m),
        PRNA_finished_m_median=median(PRNA_finished_m),
        SRNA_dropped_median=median(SRNA_dropped),
        SRNA_end_median=median(SRNA_end),
        mrna_median=median(mrna),
        cds_pro_median=median(cds_pro)),by=.(P_s2p_u1,P_s2p_u2)][order(P_s2p_u1),]->hh1
  hh1[hh1$P_s2p_u1<=0.5&hh1$P_s2p_u2<=0.5,]->hh1 # version2,I-uORF<=0.5
  
  ## CV of CDS TE (PRNA_finished_m) ####
  myvaribles<-names(hh1)[c(-1,-2)]
  i<-6; myvaribles[i]
  #for (i in 1:length(myvaribles)) {
  x<-dcast(hh1,P_s2p_u1~P_s2p_u2,value.var = myvaribles[i])
  as.data.frame(x)->x
  rownames(x)<-x$P_s2p_u1
  x[,-1]->x
  pheatmap(x,main=paste(files_name[j],myvaribles[i]),fontsize = 20,display_numbers = F,number_format = "%.2f",fontsize_number = 15,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
  #}
  assign(paste0(files_name[j],"_TE_CV_CDS_2uORF"),x)
  
  ## median of CDS TE (PRNA_finished_m) ####
  i<-18; myvaribles[i] 
  #for (i in 1:length(myvaribles)) {
  x<-dcast(hh1,P_s2p_u1~P_s2p_u2,value.var = myvaribles[i])
  as.data.frame(x)->x
  rownames(x)<-x$P_s2p_u1
  x[,-1]->x
  pheatmap(x/1000,main=paste(files_name[j],myvaribles[i]),fontsize = 20,display_numbers = F,number_format = "%.2f",fontsize_number = 15,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
  #}
  assign(paste0(files_name[j],"_TE_median_CDS_2uORF"),x)
  
  #### case plot: CDS TE distribution####
  # NO uORF
  hh[P_s2p_u1==0&P_s2p_u2==0]->tmp2
  tmp2$Lambda<-tmp2$Lambda*10^6
  tmp3<-melt.data.table(tmp2,id.vars = "sim_ID")
  names(tmp3)<-c("id","parameter","value")
  tmp3<-tmp3[parameter%in%c("Lambda","SRNA_started","SRNA_passed_bm","PRNA_finished_m"),]
  p<-ggplot(tmp3[parameter=="PRNA_finished_m"], aes(x=value/1000,fill=parameter,color=parameter)) + 
    #geom_histogram(aes(y = ..count..), binwidth = 100, colour= "black", fill = "white")+
    geom_density(aes(y=..count..),alpha=0.4)+
    coord_cartesian(xlim=c(0,20000/1000),ylim = c(0,500))+
    #geom_vline(xintercept=TE_gamma_median, color="black",linetype="dashed", size=1)+
    labs(x = 'Value', y = 'Density',title=paste0(files_name[j],"_NO_uORF"))+theme_classic(base_size = 24)+
    theme(legend.title=element_blank())+theme(legend.position="none")
  print(p)
  c(CV(tmp2$Lambda),CV(tmp2$SRNA_started),CV(tmp2$SRNA_passed_bm),CV(tmp2$PRNA_finished_m),median(tmp2$PRNA_finished_m))
  
  # with uORF
  hh[P_s2p_u1==0.2&P_s2p_u2==0.2]->tmp2
  tmp2$Lambda<-tmp2$Lambda*10^6
  tmp3<-melt.data.table(tmp2,id.vars = "sim_ID")
  names(tmp3)<-c("id","parameter","value")
  tmp3<-tmp3[parameter%in%c("Lambda","SRNA_started","SRNA_passed_bm","PRNA_finished_m"),]
  p<-ggplot(tmp3[parameter=="PRNA_finished_m"], aes(x=value/1000,fill=parameter,color=parameter)) + 
    #geom_histogram(aes(y = ..count..), binwidth = 100, colour= "black", fill = "white")+
    geom_density(aes(y=(..count..)/3),alpha=0.4)+
    coord_cartesian(xlim=c(0,20000/1000),ylim = c(0,500))+
    #geom_vline(xintercept=TE_gamma_median, color="black",linetype="dashed", size=1)+
    labs(x = 'Value', y = 'Density',title=paste0(files_name[j],"_with_uORF"))+theme_classic(base_size = 24)+
    theme(legend.title=element_blank())+theme(legend.position="none")
  print(p)
  c(CV(tmp2$Lambda),CV(tmp2$SRNA_started),CV(tmp2$SRNA_passed_bm),CV(tmp2$PRNA_finished_m),median(tmp2$PRNA_finished_m))
  
  
  #### uORF_TE_LFC vs CDS_TE_LFC ####
  jj[P_s2p_u1!=0&P_s2p_u1!=1&P_s2p_u2!=0&P_s2p_u2!=1]->hh1 #remove uORF no translated and CDS no translated
  hh1[,median_lambda:=median(sort(Lambda)[-1]),by=.(P_s2p_u1,P_s2p_u2)] # this for even number of lambda; median(Lambda) for odd number
  hh1[,c("median_PRNA_finished_u1","median_PRNA_finished_u2","median_PRNA_finished_m","median_mrna","median_cds_pro"):=
        .(PRNA_finished_u1[Lambda==median_lambda],
          PRNA_finished_u2[Lambda==median_lambda],
          PRNA_finished_m[Lambda==median_lambda],
          mrna[Lambda==median_lambda],
          cds_pro[Lambda==median_lambda]),by=.(P_s2p_u1,P_s2p_u2)]
  hh1[,c("lfc_lambda","lfc_PRNA_finished_u1","lfc_PRNA_finished_u2","lfc_PRNA_finished_m","lfc_mrna","lfc_cds_pro"):=
        .(log2(Lambda/median_lambda),
          log2(PRNA_finished_u1/median_PRNA_finished_u1),
          log2(PRNA_finished_u2/median_PRNA_finished_u2),
          log2(PRNA_finished_m/median_PRNA_finished_m),
          log2(mrna/median_mrna),
          log2(cds_pro/median_cds_pro)),by=.(P_s2p_u1,P_s2p_u2)]
  hh1[,TE_gamma1:=abs(lfc_PRNA_finished_m)-abs(lfc_PRNA_finished_u1)] # magnitude of CDS change vs uORF TE change
  hh1[,TE_gamma2:=abs(lfc_PRNA_finished_m)-abs(lfc_PRNA_finished_u2)] # magnitude of CDS change vs uORF TE change
  
  
  hh2<-hh1[,.(cor_TE_LFC1=round(cor.test(lfc_PRNA_finished_u1,lfc_PRNA_finished_m,method = "spearman")$estimate,3),
              cor_TE_LFC2=round(cor.test(lfc_PRNA_finished_u2,lfc_PRNA_finished_m,method = "spearman")$estimate,3),
              cor_TE_LFC3=round(cor.test(lfc_PRNA_finished_u1,lfc_PRNA_finished_u2,method = "spearman")$estimate,3),
              median_TE_gamma1=median(TE_gamma1),
              median_TE_gamma2=median(TE_gamma2)),by=.(P_s2p_u1,P_s2p_u2)]
  hh2[hh2$P_s2p_u1<0.5&hh2$P_s2p_u2<0.5,]->hh2 # version2,I-uORF<=0.5
  
  myvaribles<-names(hh2)[c(-1,-2)]
  for (i in 1:length(myvaribles)) {
    x<-dcast(hh2,P_s2p_u1~P_s2p_u2,value.var = myvaribles[i])
    as.data.frame(x)->x
    rownames(x)<-x$P_s2p_u
    x[,-1]->x
    pheatmap(x,main=paste(files_name[j],myvaribles[i]),fontsize = 20,col=colorRampPalette(c("white", "red"))(50),cluster_rows = F,cluster_cols = F,treeheight_row = 0,show_rownames = T,show_colnames = T)
  }
  
  #case plot
  as.data.table(hh1[P_s2p_u1==0.2&P_s2p_u2==0.2])->tmp
  p<-ggplot(tmp, aes(x=lfc_PRNA_finished_u1, y=lfc_PRNA_finished_m)) + 
    geom_point(size=4,shape=20,alpha=0.05)+ 
    coord_cartesian(ylim = c(-3, 1),xlim=c(-3,1)) +
    #geom_abline(intercept = 0, slope = 1,color="black",linetype="dashed")+  
    geom_smooth(method='lm', se=F,formula= y~x,col="red",linetype="dashed")+
    labs(x = 'log2FC of uORF1_TE', y = 'log2FC of CDS_TE',title=paste(files_name[j],"TE LFC"))+
    mytheme+
    theme_classic(base_size = 24)
  print(p)
  
  TE_gamma_median<-median(tmp$TE_gamma1)
  p1<-ggplot(tmp, aes(x=TE_gamma1)) + 
    geom_density(fill="blue",color="blue",alpha=0.4)+
    #coord_cartesian(xlim=c(-0.8,0.5))+
    geom_vline(xintercept=TE_gamma_median, color="black",linetype="dashed", size=1)+
    labs(x = 'Gamma', y = 'Density',title=paste(files_name[j],"Gamma"))+theme_classic(base_size = 24)+
    theme(legend.position="none")
  print(p1)
}

## one-uORF vs two-uORF ####
exp_down_TE_CV_CDS_1uORF$I_uORF1<-rownames(exp_down_TE_CV_CDS_1uORF)
exp_down_TE_CV_CDS_1uORF<-as.data.table(exp_down_TE_CV_CDS_1uORF)
x<-melt.data.table(exp_down_TE_CV_CDS_1uORF,id.vars = "I_uORF1")
names(x)<-c("I_uORF1","I_CDS","CV_CDS")

exp_down_TE_CV_CDS_2uORF$I_uORF1<-rownames(exp_down_TE_CV_CDS_2uORF)
exp_down_TE_CV_CDS_2uORF<-as.data.table(exp_down_TE_CV_CDS_2uORF)
y<-melt.data.table(exp_down_TE_CV_CDS_2uORF,id.vars = "I_uORF1")
names(y)<-c("I_uORF1","I_uORF2","CV_CDS")

x1<-x[I_CDS==0.9,]
z<-merge(y,x1[,-2], by="I_uORF1")
z[,cv_ratio:= CV_CDS.x/CV_CDS.y]
ggplot(z, aes(x = I_uORF2, y = cv_ratio,color=factor(I_uORF2)))+
  geom_point(aes(color = I_uORF2),position=position_jitterdodge(),size=1.8,alpha = 1)+
  facet_wrap(~I_uORF1,nrow=2,scales = "free")+
  labs(x = 'I_uORF2', y = 'TE CV of CDS in two-uORF/TE CV of CDS in single-uORF ', color = NULL)+
  mytheme

save.image(file = "~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig1/Fig1_related.Rdata")
