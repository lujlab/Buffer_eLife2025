
#


# CDS.pipeline.sh
# upper case
cat dmel-all-r6.04.CDS.12.maf.newSim.nogap.fa|sed 's/[a-z]/\u&/g'|perl -wpe 's/V1.FBTR/v1.FBtr/g' > dmel-all-r6.04.gtf.CDS.12col.chr.newSim.nogap.fasta
cat dmel-all-r6.04.UTR3.12.maf.newSim.nogap.fa|sed 's/[a-z]/\u&/g'|perl -wpe 's/>(\S+)V1.FBTR(\S+)\n/$1v1.FBtr$2\t/g' > dmel-all-r6.04.gtf.UTR3.12col.chr.newSim.nogap.fasta.tab
# cat CDS UTR3
cat dmel-all-r6.04.gtf.CDS.12col.chr.newSim.nogap.fasta|perl -wpe 's/>(\S+)\n/$1\t/g'|perl add.intersect.pl dmel-all-r6.04.gtf.UTR3.12col.chr.newSim.nogap.fasta.tab - 1 2 1|awk '{print ">" $1 "\n" $2 $3}' > dmel-all-r6.04.gtf.CDS.UTR3.12col.chr.newSim.nogap.fasta
# extend CDS
cat dmel-all-r6.04.gtf.CDS.UTR3.12col.chr.newSim.nogap.fasta|perl -wpe 's/>(\S+)\n/$1\t/g'|perl -wpe 's/([ACGTN]{3})/$1,/g'|perl -wpe 's/,(TAA|TGA|TAG)\S+/,$1/g'|perl -wpe 's/,\S{1,2}$//g'|perl -wpe 's/,//g'|awk 'OFS="\t"{print $1,0,length($2),".",$2,"+"}' > dsim_CDS_nogap_extended.bed

## matrix uATG
cat uORF_matrix_triCas2_ATG_noCDS.csv|awk -F "," 'OFS="\t"{print $1,"dm6:"$2,"newSim:"$3}'|grep -v "ASM438218v1"|perl -wpe 's/^(\S+)_([0-9]+)\(([0-9]+)\)/$1\t$2\t$3/g'|awk 'OFS="\t"{print $1,$3,$3+3,$4,$5,".",$1"_"$2+1}' > uATG_matrix_dm6new_FBtr_pos.bed

uORF_matrix_27species <- readRDS("uORF_matrix_27species.rds")
library(data.table)
m <- fread("uORF_matrix_triCas2_ATG_noCDS.csv",data.table=F,header=T)
colnames(m)[1] <- "uorf_align"
m$transcriptID <- gsub("_.*","",m$uorf_align)
m$position_withoutgap <- as.numeric(gsub(".*_[0-9]+.([0-9]+).$","\\1",m$uorf_align))
m$uorf_id <- paste(m$transcriptID,m$position_withoutgap+1,sep="_")
saveRDS(m,file="uORF_matrix_27species_new.rds",version=2)


# 5UTR.dsim.pipeline.sh
# upper case
cat dmel-all-r6.04.UTR5.12.maf.newSim.nogap.fa|sed 's/[a-z]/\u&/g'|perl -wpe 's/V1.FBTR/v1.FBtr/g' > dmel-all-r6.04.gtf.UTR5.12col.chr.newSim.nogap.fasta
# correct ungapped position with -1 0
cat dsim_ASM438218v1_uATG_nogap.bed|perl -wpe 's/_([0-9]+)_([0-9]+)\t\*/\t$1\t$2/g'|awk 'OFS="\t"{if($2<0){print $1,0,3,$4"_"$5,1,$7} else{print $1,$2,$3,$4"_"$5,$6,$7}}'|perl -wpe 's/\t\S+v1\./\t/g' > dsim_ASM438218v1_uATG_nogap.bed.tmp
# correct out of range
cat dmel-all-r6.04.gtf.UTR5.12col.chr.newSim.nogap.fasta|perl -wpe 's/>(\S+)\n/$1\t/g'|awk 'OFS="\t"{print $1,length($2)}'|perl add.intersect.pl - dsim_ASM438218v1_uATG_nogap.bed.tmp 1 2 1 0|awk 'OFS="\t"{if($3>$7){$3=$7;print $0} else{print}}'|perl add.intersect.pl uATG_matrix_dm6new_FBtr_pos.bed - 7 4 4 NA|perl add.intersect.pl uATG_matrix_dm6new_FBtr_pos.bed - 7 5 4 NA > dsim_ASM438218v1_uATG_nogap.bed.corrected
# check uATG
cat dsim_ASM438218v1_uATG_nogap.bed.corrected|grep "newSim:1"|bedtools getfasta -fi dmel-all-r6.04.gtf.UTR5.12col.chr.newSim.nogap.fasta -bed - -fo -|grep -v ">"|sort|uniq -c
# get seq from uATG & extend
cat dsim_ASM438218v1_uATG_nogap.bed.corrected|awk 'OFS="\t"{print $1,$2,$7}'|bedtools getfasta -fi dmel-all-r6.04.gtf.UTR5.12col.chr.newSim.nogap.fasta -bed - -fo -|perl -wpe 's/>(\S+):([0-9]+)\-([0-9]+)\n/$1\t$2\t$3\t/g'|perl -wpe 's/([ACGTN]{3})/$1,/g'|perl -wpe 's/,(TAA|TGA|TAG)\S+/,$1/g'|perl -wpe 's/,\S{1,2}$//g'|perl -wpe 's/,//g'|awk 'OFS="\t"{print $1,$2,$2+length($4),$4,$3}'|paste - dsim_ASM438218v1_uATG_nogap.bed.corrected|awk 'OFS="\t"{print $1,$2,$3,$9,$10,$11,$12,$13,$14,$4}' > dsim_uORF_nogap.bed.corrected



# grep_uORF.sh

grep "_uORF" dsim_em_0_2h_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_01_em_0_2h_mRNA.uORF.cnt
grep "_uORF" dsim_em_2_6h_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_02_em_2_6h_mRNA.uORF.cnt
grep "_uORF" dsim_em_6_12h_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_03_em_6_12h_mRNA.uORF.cnt
grep "_uORF" dsim_em_12_24h_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_04_em_12_24h_mRNA.uORF.cnt
grep "_uORF" dsim_larva_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_05_larva_mRNA.uORF.cnt
grep "_uORF" dsim_pupa_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_06_pupa_mRNA.uORF.cnt
grep "_uORF" dsim_female_body_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_07_female_body_mRNA.uORF.cnt
grep "_uORF" dsim_male_body_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_08_male_body_mRNA.uORF.cnt
grep "_uORF" dsim_female_head_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_09_female_head_mRNA.uORF.cnt
grep "_uORF" dsim_male_head_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_10_male_head_mRNA.uORF.cnt

grep "_uORF" dsim_em_0_2h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_01_em_0_2h_Ribo.uORF.cnt
grep "_uORF" dsim_em_2_6h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_02_em_2_6h_Ribo.uORF.cnt
grep "_uORF" dsim_em_6_12h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_03_em_6_12h_Ribo.uORF.cnt
grep "_uORF" dsim_em_12_24h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_04_em_12_24h_Ribo.uORF.cnt
grep "_uORF" dsim_larva_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_05_larva_Ribo.uORF.cnt
grep "_uORF" dsim_pupa_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_06_pupa_Ribo.uORF.cnt
grep "_uORF" dsim_female_body_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_07_female_body_Ribo.uORF.cnt
grep "_uORF" dsim_male_body_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_08_male_body_Ribo.uORF.cnt
grep "_uORF" dsim_female_head_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_09_female_head_Ribo.uORF.cnt
grep "_uORF" dsim_male_head_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/ASM438218v1.|_uORF//g' > dsim_10_male_head_Ribo.uORF.cnt

grep "_uORF" dmel_em_0_2h_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_01_em_0_2h_mRNA.uORF.cnt
grep "_uORF" dmel_em_2_6h_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_02_em_2_6h_mRNA.uORF.cnt
grep "_uORF" dmel_em_6_12h_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_03_em_6_12h_mRNA.uORF.cnt
grep "_uORF" dmel_em_12_24h_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_04_em_12_24h_mRNA.uORF.cnt
grep "_uORF" dmel_larva_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_05_larva_mRNA.uORF.cnt
grep "_uORF" dmel_pupa_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_06_pupa_mRNA.uORF.cnt
grep "_uORF" dmel_female_body1_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_07_female_body1_mRNA.uORF.cnt
grep "_uORF" dmel_female_body2_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_07_female_body2_mRNA.uORF.cnt
grep "_uORF" dmel_male_body1_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_08_male_body1_mRNA.uORF.cnt
grep "_uORF" dmel_male_body2_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_08_male_body2_mRNA.uORF.cnt
grep "_uORF" dmel_female_head_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_09_female_head_mRNA.uORF.cnt
grep "_uORF" dmel_male_head_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_uORF//g' > dmel_10_male_head_mRNA.uORF.cnt
paste dmel_07_female_body1_mRNA.uORF.cnt dmel_07_female_body2_mRNA.uORF.cnt|awk 'OFS="\t"{if($1==$3){print $1,$2+$4}}' > dmel_07_female_body_mRNA.uORF.cnt
paste dmel_08_male_body1_mRNA.uORF.cnt dmel_08_male_body2_mRNA.uORF.cnt|awk 'OFS="\t"{if($1==$3){print $1,$2+$4}}' > dmel_08_male_body_mRNA.uORF.cnt

grep "_uORF" dmel_em_0_2h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_01_em_0_2h_Ribo.uORF.cnt
grep "_uORF" dmel_em_2_6h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_02_em_2_6h_Ribo.uORF.cnt
grep "_uORF" dmel_em_6_12h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_03_em_6_12h_Ribo.uORF.cnt
grep "_uORF" dmel_em_12_24h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_04_em_12_24h_Ribo.uORF.cnt
grep "_uORF" dmel_larva_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_05_larva_Ribo.uORF.cnt
grep "_uORF" dmel_pupa_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_06_pupa_Ribo.uORF.cnt
grep "_uORF" dmel_female_body1_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_07_female_body1_Ribo.uORF.cnt
grep "_uORF" dmel_female_body2_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_07_female_body2_Ribo.uORF.cnt
grep "_uORF" dmel_male_body1_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_08_male_body1_Ribo.uORF.cnt
grep "_uORF" dmel_male_body2_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_08_male_body2_Ribo.uORF.cnt
grep "_uORF" dmel_female_head_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_09_female_head_Ribo.uORF.cnt
grep "_uORF" dmel_male_head_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_uORF//g' > dmel_10_male_head_Ribo.uORF.cnt
paste dmel_07_female_body1_Ribo.uORF.cnt dmel_07_female_body2_Ribo.uORF.cnt|awk 'OFS="\t"{if($1==$3){print $1,$2+$4}}' > dmel_07_female_body_Ribo.uORF.cnt
paste dmel_08_male_body1_Ribo.uORF.cnt dmel_08_male_body2_Ribo.uORF.cnt|awk 'OFS="\t"{if($1==$3){print $1,$2+$4}}' > dmel_08_male_body_Ribo.uORF.cnt





library(data.table)

uORF_matrix_27species <- readRDS("uORF_matrix_27species_new.rds")
uORF_matrix_27species$pos_withgap <- as.numeric(gsub(".*_|\\(.*","",uORF_matrix_27species$uorf_align))+1
uORF_matrix_27species$uA_pos_withgap <- paste(uORF_matrix_27species$transcriptID,uORF_matrix_27species$pos_withgap,sep="_")
tmp <- uORF_matrix_27species

dsim_uORF_nogap.bed <- fread("dsim_uORF_nogap.bed.corrected",data.table=F,header=F,select=1:4)
dsim_uORF_nogap.bed$dsim_len <- dsim_uORF_nogap.bed$V3-dsim_uORF_nogap.bed$V2
colnames(dsim_uORF_nogap.bed)[4] <- "uA_pos_withgap"

tmp2 <- merge(tmp[,c("uA_pos_withgap","uorf_id")],dsim_uORF_nogap.bed[,c("uA_pos_withgap","dsim_len")],by="uA_pos_withgap",sort=F)
k0 <- c("01_em_0_2h","02_em_2_6h","03_em_6_12h","04_em_12_24h","05_larva","06_pupa","07_female_body","08_male_body","09_female_head","10_male_head")
k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
for(i in 1:length(k0)){
  cnt <- fread(paste0("dsim_",k0[i],"_mRNA.uORF.cnt"),data.table=F,header=F)
  colnames(cnt) <- c("uA_pos_withgap",paste0("dsim_",k[i],"_mRNA"))
  tmp2 <- merge(tmp2,cnt,by="uA_pos_withgap",all.x=T,sort=F)
  cnt <- fread(paste0("dsim_",k0[i],"_Ribo.uORF.cnt"),data.table=F,header=F)
  colnames(cnt) <- c("uA_pos_withgap",paste0("dsim_",k[i],"_Ribo"))
  tmp2 <- merge(tmp2,cnt,by="uA_pos_withgap",all.x=T,sort=F)
}
saveRDS(tmp2,file="dsim_uORF_count_new.rds",version=2)

dmel6.uORF.annot <- fread("dmel6.uORF.annot.txt",data.table=F,header=T)
tmp <- dmel6.uORF.annot[,c(1,2,3,5)]
tmp$tend <- apply(tmp[,3:4],1,min)
tmp$dmel_len_nocds <- tmp$tend-tmp$tstart+1
tmp$dmel_len_nocds <- floor(tmp$dmel_len_nocds/3)*3
tmp2 <- tmp[,c("uorf_id","dmel_len_nocds")]

k0 <- c("01_em_0_2h","02_em_2_6h","03_em_6_12h","04_em_12_24h","05_larva","06_pupa","07_female_body","08_male_body","09_female_head","10_male_head")
k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
for(i in 1:length(k0)){
  cnt <- fread(paste0("dmel_",k0[i],"_mRNA.uORF.cnt"),data.table=F,header=F)
  colnames(cnt) <- c("uorf_id",paste0("dmel_",k[i],"_mRNA"))
  tmp2 <- merge(tmp2,cnt,by="uorf_id",all.x=F,sort=F)
  cnt <- fread(paste0("dmel_",k0[i],"_Ribo.uORF.cnt"),data.table=F,header=F)
  colnames(cnt) <- c("uorf_id",paste0("dmel_",k[i],"_Ribo"))
  tmp2 <- merge(tmp2,cnt,by="uorf_id",all.x=F,sort=F)
}
saveRDS(tmp2,file="dmel_uORF_count_new.rds",version=2)




# grep_CDS.sh

# dsim
grep "_CDS" dsim_em_0_2h_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_01_em_0_2h_mRNA.CDS.cnt
grep "_CDS" dsim_em_2_6h_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_02_em_2_6h_mRNA.CDS.cnt
grep "_CDS" dsim_em_6_12h_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_03_em_6_12h_mRNA.CDS.cnt
grep "_CDS" dsim_em_12_24h_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_04_em_12_24h_mRNA.CDS.cnt
grep "_CDS" dsim_larva_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_05_larva_mRNA.CDS.cnt
grep "_CDS" dsim_pupa_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_06_pupa_mRNA.CDS.cnt
grep "_CDS" dsim_female_body_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_07_female_body_mRNA.CDS.cnt
grep "_CDS" dsim_male_body_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_08_male_body_mRNA.CDS.cnt
grep "_CDS" dsim_female_head_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_09_female_head_mRNA.CDS.cnt
grep "_CDS" dsim_male_head_mRNA.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_10_male_head_mRNA.CDS.cnt

grep "_CDS" dsim_em_0_2h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_01_em_0_2h_Ribo.CDS.cnt
grep "_CDS" dsim_em_2_6h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_02_em_2_6h_Ribo.CDS.cnt
grep "_CDS" dsim_em_6_12h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_03_em_6_12h_Ribo.CDS.cnt
grep "_CDS" dsim_em_12_24h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_04_em_12_24h_Ribo.CDS.cnt
grep "_CDS" dsim_larva_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_05_larva_Ribo.CDS.cnt
grep "_CDS" dsim_pupa_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_06_pupa_Ribo.CDS.cnt
grep "_CDS" dsim_female_body_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_07_female_body_Ribo.CDS.cnt
grep "_CDS" dsim_male_body_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_08_male_body_Ribo.CDS.cnt
grep "_CDS" dsim_female_head_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_09_female_head_Ribo.CDS.cnt
grep "_CDS" dsim_male_head_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - chrNameLength.txt 1 2 1 0|perl -wpe 's/ASM438218v1.//g' > dsim_10_male_head_Ribo.CDS.cnt

# dmel
grep "_CDS" dmel_em_0_2h_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_01_em_0_2h_mRNA.CDS.cnt
grep "_CDS" dmel_em_2_6h_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_02_em_2_6h_mRNA.CDS.cnt
grep "_CDS" dmel_em_6_12h_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_03_em_6_12h_mRNA.CDS.cnt
grep "_CDS" dmel_em_12_24h_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_04_em_12_24h_mRNA.CDS.cnt
grep "_CDS" dmel_larva_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_05_larva_mRNA.CDS.cnt
grep "_CDS" dmel_pupa_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_06_pupa_mRNA.CDS.cnt
grep "_CDS" dmel_female_body1_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_07_female_body1_mRNA.CDS.cnt
grep "_CDS" dmel_female_body2_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_07_female_body2_mRNA.CDS.cnt
grep "_CDS" dmel_male_body1_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_08_male_body1_mRNA.CDS.cnt
grep "_CDS" dmel_male_body2_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_08_male_body2_mRNA.CDS.cnt
grep "_CDS" dmel_female_head_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_09_female_head_mRNA.CDS.cnt
grep "_CDS" dmel_male_head_mrna.bam.q10.fq.cds_utr5_uorf.mrna.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_10_male_head_mRNA.CDS.cnt
paste dmel_07_female_body1_mRNA.CDS.cnt dmel_07_female_body2_mRNA.CDS.cnt|awk 'OFS="\t"{if($1==$4){print $1,$2,$3+$6}}' > dmel_07_female_body_mRNA.CDS.cnt
paste dmel_08_male_body1_mRNA.CDS.cnt dmel_08_male_body2_mRNA.CDS.cnt|awk 'OFS="\t"{if($1==$4){print $1,$2,$3+$6}}' > dmel_08_male_body_mRNA.CDS.cnt

grep "_CDS" dmel_em_0_2h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_01_em_0_2h_Ribo.CDS.cnt
grep "_CDS" dmel_em_2_6h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_02_em_2_6h_Ribo.CDS.cnt
grep "_CDS" dmel_em_6_12h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_03_em_6_12h_Ribo.CDS.cnt
grep "_CDS" dmel_em_12_24h_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_04_em_12_24h_Ribo.CDS.cnt
grep "_CDS" dmel_larva_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_05_larva_Ribo.CDS.cnt
grep "_CDS" dmel_pupa_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_06_pupa_Ribo.CDS.cnt
grep "_CDS" dmel_female_body1_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_07_female_body1_Ribo.CDS.cnt
grep "_CDS" dmel_female_body2_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_07_female_body2_Ribo.CDS.cnt
grep "_CDS" dmel_male_body1_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_08_male_body1_Ribo.CDS.cnt
grep "_CDS" dmel_male_body2_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_08_male_body2_Ribo.CDS.cnt
grep "_CDS" dmel_female_head_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_09_female_head_Ribo.CDS.cnt
grep "_CDS" dmel_male_head_ribo.bam.q10.fq.cds_utr5_uorf.rpf.cnt|perl -wpe 's/_CDS//g'|perl add.intersect.bed.pl - dm6_CDS_len.txt 1 2 1 0 > dmel_10_male_head_Ribo.CDS.cnt
paste dmel_07_female_body1_Ribo.CDS.cnt dmel_07_female_body2_Ribo.CDS.cnt|awk 'OFS="\t"{if($1==$4){print $1,$2,$3+$6}}' > dmel_07_female_body_Ribo.CDS.cnt
paste dmel_08_male_body1_Ribo.CDS.cnt dmel_08_male_body2_Ribo.CDS.cnt|awk 'OFS="\t"{if($1==$4){print $1,$2,$3+$6}}' > dmel_08_male_body_Ribo.CDS.cnt





library(data.table)

FBtr_FBgn <- fread("dmel-all-transcript-r6.04.fasta.len",data.table=F,header=F)
colnames(FBtr_FBgn) <- c("FBtr","geneName","geneID","FBtr_len")

tmp <- fread("dsim_01_em_0_2h_mRNA.CDS.cnt",data.table=F,header=F)[,1:2]
colnames(tmp) <- c("FBtr","dsim_CDS_len")
tmp2 <- tmp
k0 <- c("01_em_0_2h","02_em_2_6h","03_em_6_12h","04_em_12_24h","05_larva","06_pupa","07_female_body","08_male_body","09_female_head","10_male_head")
k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
for(i in 1:length(k0)){
  cnt <- fread(paste0("dsim_",k0[i],"_mRNA.CDS.cnt"),data.table=F,header=F)[,c(1,3)]
  colnames(cnt) <- c("FBtr",paste0("dsim_",k[i],"_CDS_mRNA"))
  tmp2 <- merge(tmp2,cnt,by="FBtr",all.x=T,sort=F)
  cnt <- fread(paste0("dsim_",k0[i],"_Ribo.CDS.cnt"),data.table=F,header=F)[,c(1,3)]
  colnames(cnt) <- c("FBtr",paste0("dsim_",k[i],"_CDS_Ribo"))
  tmp2 <- merge(tmp2,cnt,by="FBtr",all.x=T,sort=F)
}
tmp2 <- merge(FBtr_FBgn[,c("FBtr","geneID")],tmp2,by="FBtr")
saveRDS(tmp2,file="dsim_CDS_count_new.rds",version=2)

tmp <- fread("dsim_01_em_0_2h_mRNA.5UTR.cnt",data.table=F,header=F)[,1:2]
colnames(tmp) <- c("FBtr","dsim_5UTR_len")
tmp2 <- tmp
k0 <- c("01_em_0_2h","02_em_2_6h","03_em_6_12h","04_em_12_24h","05_larva","06_pupa","07_female_body","08_male_body","09_female_head","10_male_head")
k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
for(i in 1:length(k0)){
  cnt <- fread(paste0("dsim_",k0[i],"_mRNA.5UTR.cnt"),data.table=F,header=F)[,c(1,3)]
  colnames(cnt) <- c("FBtr",paste0("dsim_",k[i],"_5UTR_mRNA"))
  tmp2 <- merge(tmp2,cnt,by="FBtr",all.x=T,sort=F)
  cnt <- fread(paste0("dsim_",k0[i],"_Ribo.5UTR.cnt"),data.table=F,header=F)[,c(1,3)]
  colnames(cnt) <- c("FBtr",paste0("dsim_",k[i],"_5UTR_Ribo"))
  tmp2 <- merge(tmp2,cnt,by="FBtr",all.x=T,sort=F)
}
tmp2 <- merge(FBtr_FBgn[,c("FBtr","geneID")],tmp2,by="FBtr")
saveRDS(tmp2,file="dsim_5UTR_count_new.rds",version=2)

tmp <- fread("dmel_01_em_0_2h_mRNA.CDS.cnt",data.table=F,header=F)[,1:2]
colnames(tmp) <- c("FBtr","dmel_CDS_len")
tmp2 <- tmp
k0 <- c("01_em_0_2h","02_em_2_6h","03_em_6_12h","04_em_12_24h","05_larva","06_pupa","07_female_body","08_male_body","09_female_head","10_male_head")
k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
for(i in 1:length(k0)){
  cnt <- fread(paste0("dmel_",k0[i],"_mRNA.CDS.cnt"),data.table=F,header=F)[,c(1,3)]
  colnames(cnt) <- c("FBtr",paste0("dmel_",k[i],"_CDS_mRNA"))
  tmp2 <- merge(tmp2,cnt,by="FBtr",all.x=T,sort=F)
  cnt <- fread(paste0("dmel_",k0[i],"_Ribo.CDS.cnt"),data.table=F,header=F)[,c(1,3)]
  colnames(cnt) <- c("FBtr",paste0("dmel_",k[i],"_CDS_Ribo"))
  tmp2 <- merge(tmp2,cnt,by="FBtr",all.x=T,sort=F)
}
tmp2 <- merge(FBtr_FBgn[,c("FBtr","geneID")],tmp2,by="FBtr")
saveRDS(tmp2,file="dmel_CDS_count_new.rds",version=2)

tmp <- fread("dmel_01_em_0_2h_mRNA.5UTR.cnt",data.table=F,header=F)[,1:2]
colnames(tmp) <- c("FBtr","dmel_5UTR_len")
tmp2 <- tmp
k0 <- c("01_em_0_2h","02_em_2_6h","03_em_6_12h","04_em_12_24h","05_larva","06_pupa","07_female_body","08_male_body","09_female_head","10_male_head")
k <- c("em02","em26","em612","em1224","larva","pupa","fem","mal","FH","MH")
for(i in 1:length(k0)){
  cnt <- fread(paste0("dmel_",k0[i],"_mRNA.5UTR.cnt"),data.table=F,header=F)[,c(1,3)]
  colnames(cnt) <- c("FBtr",paste0("dmel_",k[i],"_5UTR_mRNA"))
  tmp2 <- merge(tmp2,cnt,by="FBtr",all.x=T,sort=F)
  cnt <- fread(paste0("dmel_",k0[i],"_Ribo.5UTR.cnt"),data.table=F,header=F)[,c(1,3)]
  colnames(cnt) <- c("FBtr",paste0("dmel_",k[i],"_5UTR_Ribo"))
  tmp2 <- merge(tmp2,cnt,by="FBtr",all.x=T,sort=F)
}
tmp2 <- merge(FBtr_FBgn[,c("FBtr","geneID")],tmp2,by="FBtr")
saveRDS(tmp2,file="dmel_5UTR_count_new.rds",version=2)




#
