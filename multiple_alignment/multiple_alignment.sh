cp ../runLastzChain.sh . #edit
ln -s /gpfs2/liucl/lcl/dataset/dm6/BDGP6/dm6.2bit .
ln -s /gpfs2/liucl/lcl/dataset/dm6/BDGP6/dm6.chrom.sizes .
ln -s ../../1.softmask/ASM438218v1_mask_out/GCA_004382185.1_ASM438218v1_genomic.2bit ASM438218v1.2bit
ln -s ../../1.softmask/ASM438218v1_mask_out/GCA_004382185.1_ASM438218v1_genomic.chrom.sizes ASM438218v1.chrom.sizes
bash runLastzChain.sh
head -n 29 query.lift>query.lift2;mv query.lift2 query.lift
head -n 29 query.list>query.list2;mv query.list2 query.list
head -n 31 target.lift>target.lift2;mv target.lift2 target.lift
head -n 31 target.list>target.list2;mv target.list2 target.list
mkdir scratch
mkdir scratch/tmp
chmod +x runLastz
gensub2 target.list query.list template jobList

nohup ParaFly -c jobList -CPU 10 &
csh chainJobs.csh
chainPreNet dm6.ASM438218v1.all.chain.gz dm6.chrom.sizes ASM438218v1.chrom.sizes dm6.ASM438218v1.all.pre.chain
chainNet dm6.ASM438218v1.all.pre.chain  dm6.chrom.sizes ASM438218v1.chrom.sizes dm6.prenet ASM438218v1.prenet

netSyntenic dm6.prenet dm6.net 
netSyntenic ASM438218v1.prenet ASM438218v1.net

netToAxt dm6.net dm6.ASM438218v1.all.pre.chain dm6.2bit ASM438218v1.2bit dm6_ASM438218v1.axt 
axtSort dm6_ASM438218v1.axt dm6_ASM438218v1_sort.axt
axtToMaf dm6_ASM438218v1_sort.axt dm6.chrom.sizes ASM438218v1.chrom.sizes dm6_ASM438218v1.maf -tPrefix=dm6. -qPrefix=ASM438218v1.



###extract main chromosome
maffilter input.file=../../2.lastz/ASM438218v1/dm6_ASM438218v1.maf input.file.compression=none output.log=2L.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr2L)",Output"(file=dm6_ASM438218v1.chr2L.maf, compression=none, mask=yes)"
maffilter input.file=../../2.lastz/ASM438218v1/dm6_ASM438218v1.maf input.file.compression=none output.log=2R.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr2R)",Output"(file=dm6_ASM438218v1.chr2R.maf, compression=none, mask=yes)"
maffilter input.file=../../2.lastz/ASM438218v1/dm6_ASM438218v1.maf input.file.compression=none output.log=3L.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr3L)",Output"(file=dm6_ASM438218v1.chr3L.maf, compression=none, mask=yes)"
maffilter input.file=../../2.lastz/ASM438218v1/dm6_ASM438218v1.maf input.file.compression=none output.log=3R.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr3R)",Output"(file=dm6_ASM438218v1.chr3R.maf, compression=none, mask=yes)"
maffilter input.file=../../2.lastz/ASM438218v1/dm6_ASM438218v1.maf input.file.compression=none output.log=X.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chrX)",Output"(file=dm6_ASM438218v1.chrX.maf, compression=none, mask=yes)"
maffilter input.file=../../2.lastz/ASM438218v1/dm6_ASM438218v1.maf input.file.compression=none output.log=4.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr4)",Output"(file=dm6_ASM438218v1.chr4.maf, compression=none, mask=yes)"
maffilter input.file=../../2.lastz/ASM438218v1/dm6_ASM438218v1.maf input.file.compression=none output.log=Y.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chrY)",Output"(file=dm6_ASM438218v1.chrY.maf, compression=none, mask=yes)"





###merge maf file

nohup multiz ../../4.maffilter/ASM438218v1/dm6_ASM438218v1.chr2L.maf ../chr2L.maf 1 chr2L_out1.maf chr2L_out2.maf all> dm6_ASM438218v1_27species.chr2L.maf &
nohup multiz ../../4.maffilter/ASM438218v1/dm6_ASM438218v1.chr2R.maf ../chr2R.maf 1 chr2R_out1.maf chr2R_out2.maf all> dm6_ASM438218v1_27species.chr2R.maf &
nohup multiz ../../4.maffilter/ASM438218v1/dm6_ASM438218v1.chr3L.maf ../chr3L.maf 1 chr3L_out1.maf chr3L_out2.maf all> dm6_ASM438218v1_27species.chr3L.maf &
nohup multiz ../../4.maffilter/ASM438218v1/dm6_ASM438218v1.chr3R.maf ../chr3R.maf 1 chr3R_out1.maf chr3R_out2.maf all> dm6_ASM438218v1_27species.chr3R.maf &
nohup multiz ../../4.maffilter/ASM438218v1/dm6_ASM438218v1.chr4.maf ../chr4.maf 1 chr4_out1.maf chr4_out2.maf all> dm6_ASM438218v1_27species.chr4.maf &
nohup multiz ../../4.maffilter/ASM438218v1/dm6_ASM438218v1.chrX.maf ../chrX.maf 1 chrX_out1.maf chrX_out2.maf all> dm6_ASM438218v1_27species.chrX.maf &
nohup multiz ../../4.maffilter/ASM438218v1/dm6_ASM438218v1.chrY.maf ../chrY.maf 1 chrY_out1.maf chrY_out2.maf all> dm6_ASM438218v1_27species.chrY.maf &
maffilter input.file=chr2L_out2.maf input.file.compression=none output.log=2L.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr2L)",Output"(file=chr2L_out_add.maf, compression=none, mask=yes)"
maffilter input.file=chr2R_out2.maf input.file.compression=none output.log=2R.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr2R)",Output"(file=chr2R_out_add.maf, compression=none, mask=yes)"
maffilter input.file=chr3L_out2.maf input.file.compression=none output.log=3L.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr3L)",Output"(file=chr3L_out_add.maf, compression=none, mask=yes)"
maffilter input.file=chr3R_out2.maf input.file.compression=none output.log=3R.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr3R)",Output"(file=chr3R_out_add.maf, compression=none, mask=yes)"
maffilter input.file=chr4_out2.maf input.file.compression=none output.log=4.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr4)",Output"(file=chr4_out_add.maf, compression=none, mask=yes)"
maffilter input.file=chrX_out2.maf input.file.compression=none output.log=X.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chrX)",Output"(file=chrX_out_add.maf, compression=none, mask=yes)"
maffilter input.file=chrY_out2.maf input.file.compression=none output.log=Y.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chrY)",Output"(file=chrY_out_add.maf, compression=none, mask=yes)"
maffilter input.file=chr2L_out1.maf input.file.compression=none output.log=2L.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr2L)",Output"(file=chr2L_out1_add.maf, compression=none, mask=yes)"
maffilter input.file=chr2R_out1.maf input.file.compression=none output.log=2R.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr2R)",Output"(file=chr2R_out1_add.maf, compression=none, mask=yes)"
maffilter input.file=chr3L_out1.maf input.file.compression=none output.log=3L.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr3L)",Output"(file=chr3L_out1_add.maf, compression=none, mask=yes)"
maffilter input.file=chr3R_out1.maf input.file.compression=none output.log=3R.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr3R)",Output"(file=chr3R_out1_add.maf, compression=none, mask=yes)"
maffilter input.file=chr4_out1.maf input.file.compression=none output.log=4.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chr4)",Output"(file=chr4_out1_add.maf, compression=none, mask=yes)"
maffilter input.file=chrX_out1.maf input.file.compression=none output.log=X.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chrX)",Output"(file=chrX_out1_add.maf, compression=none, mask=yes)"
maffilter input.file=chrY_out1.maf input.file.compression=none output.log=Y.log maf.filter=SelectChr"(ref_species=dm6,chromosome=chrY)",Output"(file=chrY_out1_add.maf, compression=none, mask=yes)"

cat dm6_ASM438218v1_27species.chr2L.maf chr2L_out1_add.maf chr2L_out_add.maf >dm6_ASM438218v1_all.chr2L.maf
cat dm6_ASM438218v1_27species.chr2R.maf chr2R_out1_add.maf chr2R_out_add.maf >dm6_ASM438218v1_all.chr2R.maf
cat dm6_ASM438218v1_27species.chr3L.maf chr3L_out1_add.maf chr3L_out_add.maf >dm6_ASM438218v1_all.chr3L.maf
cat dm6_ASM438218v1_27species.chr3R.maf chr3R_out1_add.maf chr3R_out_add.maf >dm6_ASM438218v1_all.chr3R.maf
cat dm6_ASM438218v1_27species.chr4.maf chr4_out1_add.maf chr4_out_add.maf >dm6_ASM438218v1_all.chr4.maf
cat dm6_ASM438218v1_27species.chrX.maf chrX_out1_add.maf chrX_out_add.maf >dm6_ASM438218v1_all.chrX.maf
cat dm6_ASM438218v1_27species.chrY.maf chrY_out1_add.maf chrY_out_add.maf >dm6_ASM438218v1_all.chrY.maf
