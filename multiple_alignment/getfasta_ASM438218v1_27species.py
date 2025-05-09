#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Get spliced multifasta from bed given bed intervals.

The results generated by the script give correct ref sequences
for 5' UTR regions of all the all the transcripts with 5' UTR.

requirement:
- biopython (>=1.72)

"""

import sys
import csv
import re
import os
import traceback
from Bio.AlignIO import MafIO
from Bio import AlignIO
from Bio.SeqIO import FastaIO





def load_splist(maf_path):
    """
    load ordered list of species prefix in maf
    """
    splist = []
    try:
        splist_path = '{}/{}'.format(maf_path, 'species_prefix_in_maf.txt')
        with open(splist_path, 'rt') as f:
            for line in f:
                splist.append(line.rstrip())
    except:
        print('Warning: each fasta block is not ordered due to the following error!', file=sys.stderr)
        print(traceback.format_exc(), file=sys.stderr)
    return splist

def parse_bed(mafs_indexed, splist, bed_path, out_path=None):
    """
    get spliced bed for each row of a bed file (12col or 6col)
    """
    if out_path is None:
        outh = sys.stdout
    else:
        outh = open(out_path, 'wt')
    with open(bed_path, 'rt') as bed:
        bed_reader = csv.reader(bed, delimiter='\t')
        for row in bed_reader:
            seq_name = row[3]
            chrom = row[0]
            if not chrom in mafs_indexed:
                print('{}: chromosome not found!'.format(chrom), file=sys.stderr)
                continue
            strand = 1 if row[5] == '+' else -1
            if len(row) >= 12:
                block_sizes = [int(i) for i in row[10].rstrip(',').split(',')]
                block_starts = [int(i) for i in row[11].rstrip(',').split(',')]
                region_starts = [i + int(row[1]) for i in block_starts]
                region_ends = [i + j for i, j in zip(region_starts, block_sizes)]
            else:  # not bed12 format, treat as 6 column bed
                region_starts = [int(row[1])]
                region_ends = [int(row[2])]
            aln = mafs_indexed[chrom].get_spliced(region_starts, region_ends, strand)
            aln_sp = {}
            for i in range(len(aln._records)):
                sp = aln._records[i].name.split('.')[0]
                aln._records[i].name = '{}.{}'.format(sp, seq_name)
                aln._records[i].id = '{}.{}'.format(sp, seq_name)
                aln_sp[sp] = i
            rec_new = list()
            if splist != []:
                for i in splist:
                    if i in aln_sp:
                        istr = FastaIO.as_fasta_2line(aln._records[aln_sp[i]])
                        print(istr, end='', file=outh)
            else:  # when splist is empty, output the records as is
                for i in aln._records:
                    print(FastaIO.as_fasta_2line(i), end='', file=outh)
            print('', file=outh)
    outh.close()
    return 0


if __name__ == '__main__':
    maf_files = ["/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chr2L.maf",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chr2R.maf",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chr3L.maf",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chr3R.maf",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chr4.maf",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chrX.maf",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chrY.maf"]
    mafidx_files = ["/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chr2L.mafidx",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chr2R.mafidx",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chr3L.mafidx",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chr3R.mafidx",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chr4.mafidx",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chrX.mafidx",
                "/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/dm6_ASM438218v1_all.chrY.mafidx"]
    refsp = "dm6"
    chr=["chr2L","chr2R","chr3L","chr3R","chr4","chrX","chrY"]
    mafs = {i:j for i, j in zip(chr, maf_files)}
    mafidxes = {i:j for i, j in zip(chr, mafidx_files)}
    mafs_indexed = dict()
    for i in chr:
        mafs_indexed[i] = MafIO.MafIndex(mafidxes[i], mafs[i], '{}.{}'.format(refsp, i))

    #mafs_indexed = load_maf_index(maf_path=sys.argv[1], refsp=sys.argv[2])
    splist = load_splist(maf_path="/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/7.new_27_maf/ASM438218v1/")
    bed_path="/gpfs2/liucl/lcl/analysis/uORF_gain_loss/species_27_maf/dm6_other_sim_genome/5.maf2fa/dmel-all-r6.04.UTR5.12.bed"
    parse_bed(mafs_indexed, splist, bed_path,out_path="./dm6_ASM438218v1_27species_5UTR.fa")

