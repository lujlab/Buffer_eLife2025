#### fig7A hatching rate ####
library(readxl); library(data.table); library(ggplot2); library(ggpubr)
hh<-read_xlsx("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig7/20210804_syq.xlsx",sheet = 1,col_names  = T)
names(hh)[1]<-"tube"

as.data.table(hh[,grep("tube|pupa",names(hh))])->pupa
tmp<-melt(pupa,id.vars="tube")
colnames(tmp)[-1] <- c("type","pupa")
tmp[,type:=gsub("_pupa","",type)]
tmp[type=="D9",]$type<-"uORF-KO1"
tmp[type=="D12",]$type<-"uORF-KO2"
tmp[type=="w1118",]$type<-"WT"
tmp$type<-factor(tmp$type,levels = c("A8","A12","uORF-KO1","uORF-KO2","ATF","WT"))
tmp[grep("uORF-KO1|uORF-KO2|WT",type)]->tmp
mytheme <- theme_classic(base_size = 16) + theme(
  axis.text = element_text(color = 'black'),
  strip.background = element_blank(),
  plot.title = element_text(hjust = 0.5),
  plot.subtitle = element_text(hjust = 0.5))
#axis.text.x = element_text(angle =  45,vjust = 0.9, hjust=1))
comp <- list(c("uORF-KO1","WT"),c("uORF-KO2","WT"))
tmp$type<-factor(tmp$type,levels = c("WT","uORF-KO1","uORF-KO2"))
ggplot(tmp[tube<21], aes(x = type, y = pupa*100/30))+
  geom_jitter(aes(color = type),size=3,alpha = 0.6,
              position = position_jitter(width = 0.15))+
  scale_color_manual(values = c("#000000","#E69F00", "#CC79A7"))+
  geom_boxplot(aes(color = type,group=factor(type)),
               color=c("#000000","#E69F00", "#CC79A7"),
               outlier.shape = NA, fill = '#00000000',width = 0.7,size=1, 
               position = position_dodge(width = 0.85))+
  labs(x = '', y = 'Hatching rate(%)', color = NULL)+
    mytheme+theme_classic(base_size = 26,base_line_size = 1.2)+
  theme(axis.text = element_text(color = 'black'),legend.position = "none")
wilcox.test(tmp[type=="WT"]$pupa, tmp[type=="uORF-KO1"]$pupa) # 1.437e-06
wilcox.test(tmp[type=="WT"]$pupa, tmp[type=="uORF-KO2"]$pupa) # 7.95e-06

#### fig7B offspring number under 25 ####
setwd("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig7/")
library(plotrix); library(data.table); library(ggplot2); library(ggpubr); library(readxl)
std <- function(x) sd(x)/sqrt(length(x))
mytheme <- theme_classic(base_size = 18) + theme(
  axis.text = element_text(color = 'black'),
  strip.background = element_blank(),
  plot.title = element_text(hjust = 0.5),
  plot.subtitle = element_text(hjust = 0.5),
  axis.text.x = element_text(angle =  45,vjust = 0.9, hjust=1)
)

hh1<-read_xlsx("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig7/20211130_offspring_number_outcross_raw.xlsx",sheet = 1,skip = 0,col_names = T)
names(hh1)<-c("tube",paste(c("female","male"),c("2","2","4","4","6","6","8","8","10","10"),sep = "_"))
as.data.table(hh1)->hh1
melt(hh1,id.vars = "tube")->tmp
cbind(tmp[grep("^female",variable)],tmp[grep("^male",variable)])->jj1
jj1[,c("day","type","temp"):=
      .(gsub(".+_","",variable),gsub("_\\d+$","",tube),rep(25,nrow(jj1)))]
jj1[,c(-2,-4,-5)]->jj1
names(jj1)[c(2,3)]<-c("female","male")
jj1[grep("NA",female,invert = T)]->jj1
jj1[,c("tube","female","male","type","temp"):=
      .(as.character(tube),as.numeric(female),as.numeric(male),as.factor(type),as.factor(temp))]
jj1[,total:=male+female]

jj1[,.(total_mean=mean(total),total_median=median(total),total_std=std(total)),by=.(type,day)]->tmp
unique(jj1[,.(female_total=sum(female),male_total=sum(male),all_total=sum(total),type=type,total_day=.N),by=.(tube)])->jj12
jj12[total_day==5]->jj12 #去掉凑不齐 10 天的管（中途死掉的）,否则不能比较
if (1) {
  jj12$type<-factor(jj12$type,levels = c("w1118","D9_self","D9_female","D9_male","D12_self","D12_female","D12_male"))
  comp <- list(c("w1118","D9_self"),c("w1118","D9_female"),c("w1118","D9_male"),c("w1118","D12_self"),c("w1118","D12_female"),c("w1118","D12_male"))
  ggplot(jj12, aes(x = type, y = all_total))+
    geom_jitter(aes(color = type),size=2.5,alpha = 0.6,
                position = position_jitter(width = 0.15))+
    scale_color_manual(values = c("#000000", "#E69F00", "#56B4E9", "#009E73","#CC79A7", "#0072B2", "#D55E00"))+
    geom_boxplot(aes(color = type,group=factor(type)), 
                 color=c("#000000", "#E69F00", "#56B4E9", "#009E73","#CC79A7", "#0072B2", "#D55E00"),
                 outlier.shape = NA, fill = '#00000000',width = 0.7,size=0.8, 
                 position = position_dodge(width = 0.85))+
    coord_cartesian(ylim = c(0, 150)) + guides(alpha = "none")+
    labs(x = 'Genotype', y = 'offspring number of each female', color = NULL)+
    #stat_compare_means(comparisons = comp, method = "wilcox.test")+ # wilcox.test
    #stat_compare_means(label = "p.signif",method = "t.test", ref.group = "w1118",hide.ns = FALSE)+
    #stat_compare_means(label.y = 1,method = "anova")+
   mytheme
}

#### fig7C offspring number under 29 ####
hh1<-read_xlsx("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig7/20220120_offspring_number_outcross_29du_raw.xlsx",sheet = 1,skip = 0,col_names = T)
names(hh1)<-c("tube",paste(c("female","male"),c("2","2","4","4","6","6","8","8","10","10"),sep = "_"))
as.data.table(hh1)->hh1
melt(hh1,id.vars = "tube")->tmp
cbind(tmp[grep("^female",variable)],tmp[grep("^male",variable)])->jj1
jj1[,c("day","type","temp"):=
      .(gsub(".+_","",variable),gsub("_\\d+$","",tube),rep(29,nrow(jj1)))]
jj1[,c(-2,-4,-5)]->jj1
names(jj1)[c(2,3)]<-c("female","male")
jj1[grep("NA",female,invert = T)]->jj1
jj1[,c("tube","female","male","type","temp"):=
      .(as.character(tube),as.numeric(female),as.numeric(male),as.factor(type),as.factor(temp))]
jj1[,total:=male+female]
unique(jj1[,.(female_total=sum(female),male_total=sum(male),all_total=sum(total),type=type,total_day=.N),by=.(tube)])->jj12
jj12[total_day==5]->jj12 #去掉凑不齐 10 天的管（中途死掉的）,否则不能比较
if (1) {
  jj12$type<-factor(jj12$type,levels = c("w1118","D9_self","D9_female","D9_male","D12_self","D12_female","D12_male","D9_male_D12_female","D9_female_D12_male"))
  comp <- list(c("w1118","D9_self"),c("w1118","D9_female"),c("w1118","D9_male"),c("w1118","D12_self"),c("w1118","D12_female"),c("w1118","D12_male"),c("w1118","D9_male_D12_female"),c("w1118","D9_female_D12_male"))
  ggplot(jj12, aes(x = type, y = all_total))+
    geom_jitter(aes(color = type),size=2.5,alpha = 0.6,
                position = position_jitter(width = 0.15))+
    scale_color_manual(values = c("#000000", "#E69F00", "#56B4E9", "#009E73","#CC79A7", "#0072B2", "#D55E00","#FF0000","#808000"))+
    geom_boxplot(aes(color = type,group=factor(type)), 
                 color=c("#000000", "#E69F00", "#56B4E9", "#009E73","#CC79A7", "#0072B2", "#D55E00","#FF0000","#808000"),
                 outlier.shape = NA, fill = '#00000000',width = 0.7,size=0.8, 
                 position = position_dodge(width = 0.85))+
    coord_cartesian(ylim = c(0, 150)) + guides(alpha = "none")+
    labs(x = 'Genotype', y = 'offspring number of each female', color = NULL)+
    # stat_compare_means(comparisons = comp, method = "wilcox.test")+
    # stat_compare_means(label = "p.signif",method = "t.test", ref.group = "w1118",hide.ns = FALSE)+
    # stat_compare_means(label.y = 1,method = "anova")+
    mytheme
}

#### fig7D starvation ####
library(data.table)
library(survival)
library(survminer)
library(h2o)
library(readxl)

hh<-read_excel("~/Desktop/uorf_ko/uORF_gain_loss/eLife_revised/revision_figures/fig7/20210911_starvation.xlsx",skip = 2)
names(hh)[1]<-"tube"
for(i in ncol(hh):3){
  hh[,i] <- hh[,i]-hh[,i-1]
}

# pool death of all tubes of each type in each time point
melt(as.data.table(hh),id.vars = "tube")->hh1
names(hh1)[2:3]<-c("time","number")
hh1[,c("type_sex","type"):=.(gsub("_\\d*$","",tube),gsub("_(male|female)_\\d*$","",tube))]
hh1$time<-as.character(hh1$time)
hh1[,.(number=sum(number)),by=.(type_sex,time)]->hh2 

# process the table to required format of survminer
as.data.frame(hh2[hh2$number>0,])->hh2
hh3<-data.frame(type_sex=hh2[1,1],time=as.character(rep(hh2[1,2],hh2[1,3])),status=1)
for (i in 2:nrow(hh2)) {
  rbind(hh3,
        data.frame(type_sex=hh2[i,1],
                   time=as.character(rep(hh2[i,2],hh2[i,3])),
                   status=1))->hh3
}

hh3$gender<-gsub(".*_","",hh3$type_sex)
hh3$type_sex<-as.character(hh3$type_sex)
hh3$time<-as.character(hh3$time)
#### plot male ####
subdata <- hh3[hh3$type_sex=="D9_male"|hh3$type_sex=="D12_male"|hh3$type_sex=="w1118_male",]
subdata[subdata$type_sex=="D9_male",]$type_sex<-"uORF-KO1"
subdata[subdata$type_sex=="D12_male",]$type_sex<-"uORF-KO2"
subdata[subdata$type_sex=="w1118_male",]$type_sex<-"WT"

subdata$type_sex <- factor(gsub("_.*$","",subdata$type_sex),levels=c("WT","uORF-KO1","uORF-KO2"))
subdata$time <- as.numeric(gsub("h$","",subdata$time))

survdiff(formula = Surv(time, status) ~ type_sex, subdata) # see P-value, tag or date_tag?
fit <- survfit(Surv(time, status) ~ type_sex, subdata)
ggsurvplot(fit, # 创建的拟合对象
           data = subdata,  # 指定变量数据来源
           # palette=c("#000000","#E69F00", "#CC79A7"), #添加颜色
           palette=c("#000000", "orange", "purple"), #添加颜色
           #conf.int = TRUE, # 显示置信区间
           #pval = TRUE, # 添加P值
           pval.coord = c(84,0.75), #P 值位置
           #surv.median.line = "hv",  # 添加中位生存时间线
           xlab="Starvation time (h)",xlim=c(0,96),
           ylab="Survival rate",
           legend = c(0.18,0.4), # 指定图例位置
           legend.title = "",font.legend=c(15,"italic","black"), # 设置图例标题
           legend.labs = c("WT","uORF-KO1","uORF-KO2"),
           break.x.by = 12,# 设置x轴刻度间距
           font.x = 18,font.y = 18,font.tickslab = 18) #设置 xlab,ylab,坐标轴数字大小 

summary(coxph(Surv(time, status) ~ type_sex, subdata))
s <- summary(coxph(Surv(time, status) ~ type_sex, subdata))
s$coefficients[,5]
#### plot female ####
subdata <- hh3[hh3$type_sex=="D9_female"|hh3$type_sex=="D12_female"|hh3$type_sex=="w1118_female",]
subdata[subdata$type_sex=="D9_female",]$type_sex<-"uORF-KO1"
subdata[subdata$type_sex=="D12_female",]$type_sex<-"uORF-KO2"
subdata[subdata$type_sex=="w1118_female",]$type_sex<-"WT"

subdata$type_sex <- factor(gsub("_.*$","",subdata$type_sex),levels=c("WT","uORF-KO1","uORF-KO2"))
subdata$time <- as.numeric(gsub("h$","",subdata$time))

survdiff(formula = Surv(time, status) ~ type_sex, subdata) # see P-value, tag or date_tag?
fit <- survfit(Surv(time, status) ~ type_sex, subdata)
ggsurvplot(fit, # 创建的拟合对象
           data = subdata,  # 指定变量数据来源
           # palette=c("#000000","#E69F00", "#CC79A7"), #添加颜色
           palette=c("#000000", "orange", "purple"), #添加颜色
           #conf.int = TRUE, # 显示置信区间
           #pval = TRUE, # 添加P值
           pval.coord = c(84,0.75), #P 值位置
           #surv.median.line = "hv",  # 添加中位生存时间线
           xlab="Starvation time (h)",xlim=c(0,132),
           ylab="Survival rate",
           legend = c(0.18,0.4), # 指定图例位置
           legend.title = "",font.legend=c(15,"italic","black"), # 设置图例标题
           legend.labs = c("WT","uORF-KO1","uORF-KO2"),
           break.x.by = 12,# 设置x轴刻度间距
           font.x = 18,font.y = 18,font.tickslab = 18) #设置 xlab,ylab,坐标轴数字大小 

summary(coxph(Surv(time, status) ~ type_sex, subdata))
s <- summary(coxph(Surv(time, status) ~ type_sex, subdata))
s$coefficients[,5]








