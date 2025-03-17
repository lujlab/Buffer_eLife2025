#!/bin/csh -fe
zcat psl/dm6.2bit:chr3R:0-5010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3R:0-5010000.chain
zcat psl/dm6.2bit:chr3R:5000000-10010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3R:5000000-10010000.chain
zcat psl/dm6.2bit:chr3R:10000000-15010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3R:10000000-15010000.chain
zcat psl/dm6.2bit:chr3R:15000000-20010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3R:15000000-20010000.chain
zcat psl/dm6.2bit:chr3R:20000000-25010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3R:20000000-25010000.chain
zcat psl/dm6.2bit:chr3R:25000000-30010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3R:25000000-30010000.chain
zcat psl/dm6.2bit:chr3R:30000000-32079331.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3R:30000000-32079331.chain
zcat psl/dm6.2bit:chr3L:0-5010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3L:0-5010000.chain
zcat psl/dm6.2bit:chr3L:5000000-10010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3L:5000000-10010000.chain
zcat psl/dm6.2bit:chr3L:10000000-15010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3L:10000000-15010000.chain
zcat psl/dm6.2bit:chr3L:15000000-20010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3L:15000000-20010000.chain
zcat psl/dm6.2bit:chr3L:20000000-25010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3L:20000000-25010000.chain
zcat psl/dm6.2bit:chr3L:25000000-28110227.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr3L:25000000-28110227.chain
zcat psl/dm6.2bit:chr2R:0-5010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2R:0-5010000.chain
zcat psl/dm6.2bit:chr2R:5000000-10010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2R:5000000-10010000.chain
zcat psl/dm6.2bit:chr2R:10000000-15010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2R:10000000-15010000.chain
zcat psl/dm6.2bit:chr2R:15000000-20010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2R:15000000-20010000.chain
zcat psl/dm6.2bit:chr2R:20000000-25010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2R:20000000-25010000.chain
zcat psl/dm6.2bit:chr2R:25000000-25286936.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2R:25000000-25286936.chain
zcat psl/dm6.2bit:chrX:0-5010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX:0-5010000.chain
zcat psl/dm6.2bit:chrX:5000000-10010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX:5000000-10010000.chain
zcat psl/dm6.2bit:chrX:10000000-15010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX:10000000-15010000.chain
zcat psl/dm6.2bit:chrX:15000000-20010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX:15000000-20010000.chain
zcat psl/dm6.2bit:chrX:20000000-23542271.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX:20000000-23542271.chain
zcat psl/dm6.2bit:chr2L:0-5010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2L:0-5010000.chain
zcat psl/dm6.2bit:chr2L:5000000-10010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2L:5000000-10010000.chain
zcat psl/dm6.2bit:chr2L:10000000-15010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2L:10000000-15010000.chain
zcat psl/dm6.2bit:chr2L:15000000-20010000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2L:15000000-20010000.chain
zcat psl/dm6.2bit:chr2L:20000000-23513712.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr2L:20000000-23513712.chain
zcat psl/dm6.2bit:chrY:0-3667352.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY:0-3667352.chain
zcat psl/dm6.2bit:chr4:0-1348131.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chr4:0-1348131.chain
zcat psl/dm6.2bit:chrUn_CP007081v1:0-88768.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007081v1:0-88768.chain
zcat psl/dm6.2bit:chrUn_CP007076v1:0-87365.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007076v1:0-87365.chain
zcat psl/dm6.2bit:chrUn_CP007080v1:0-86267.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007080v1:0-86267.chain
zcat psl/dm6.2bit:chrUn_CP007120v1:0-76973.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007120v1:0-76973.chain
zcat psl/dm6.2bit:chrUn_CP007074v1:0-76224.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007074v1:0-76224.chain
zcat psl/dm6.2bit:chrY_CP007107v1_random:0-73091.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007107v1_random:0-73091.chain
zcat psl/dm6.2bit:chrY_CP007108v1_random:0-66731.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007108v1_random:0-66731.chain
zcat psl/dm6.2bit:chrY_CP007109v1_random:0-66439.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007109v1_random:0-66439.chain
zcat psl/dm6.2bit:chrUn_CP007084v1:0-62570.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007084v1:0-62570.chain
zcat psl/dm6.2bit:chrUn_CP007090v1:0-57785.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007090v1:0-57785.chain
zcat psl/dm6.2bit:chrUn_DS483562v1:0-50625.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483562v1:0-50625.chain
zcat psl/dm6.2bit:chrUn_CP007105v1:0-47411.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007105v1:0-47411.chain
zcat psl/dm6.2bit:chrUn_CP007087v1:0-46986.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007087v1:0-46986.chain
zcat psl/dm6.2bit:chrUn_CP007085v1:0-45120.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007085v1:0-45120.chain
zcat psl/dm6.2bit:chrUn_CP007072v1:0-44411.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007072v1:0-44411.chain
zcat psl/dm6.2bit:chrY_CP007118v1_random:0-44104.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007118v1_random:0-44104.chain
zcat psl/dm6.2bit:chrUn_CP007098v1:0-43383.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007098v1:0-43383.chain
zcat psl/dm6.2bit:chrY_CP007112v1_random:0-39041.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007112v1_random:0-39041.chain
zcat psl/dm6.2bit:chrUn_CP007088v1:0-37106.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007088v1:0-37106.chain
zcat psl/dm6.2bit:chrUn_CP007077v1:0-36913.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007077v1:0-36913.chain
zcat psl/dm6.2bit:chrUn_CP007082v1:0-36482.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007082v1:0-36482.chain
zcat psl/dm6.2bit:chrY_CP007111v1_random:0-34521.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007111v1_random:0-34521.chain
zcat psl/dm6.2bit:chrY_CP007113v1_random:0-34359.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007113v1_random:0-34359.chain
zcat psl/dm6.2bit:chrX_CP007103v1_random:0-33320.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_CP007103v1_random:0-33320.chain
zcat psl/dm6.2bit:chrY_CP007110v1_random:0-33316.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007110v1_random:0-33316.chain
zcat psl/dm6.2bit:chrY_CP007114v1_random:0-31460.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007114v1_random:0-31460.chain
zcat psl/dm6.2bit:chrUn_CP007094v1:0-29583.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007094v1:0-29583.chain
zcat psl/dm6.2bit:chrUn_CP007092v1:0-28305.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007092v1:0-28305.chain
zcat psl/dm6.2bit:chrUn_DS483705v1:0-27456.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483705v1:0-27456.chain
zcat psl/dm6.2bit:chrX_CP007104v1_random:0-27447.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_CP007104v1_random:0-27447.chain
zcat psl/dm6.2bit:chrUn_CP007096v1:0-26115.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007096v1:0-26115.chain
zcat psl/dm6.2bit:chrUn_DS483707v1:0-25840.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483707v1:0-25840.chain
zcat psl/dm6.2bit:chrY_CP007116v1_random:0-25805.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007116v1_random:0-25805.chain
zcat psl/dm6.2bit:chrUn_CP007093v1:0-25698.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007093v1:0-25698.chain
zcat psl/dm6.2bit:chrUn_CP007095v1:0-25560.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007095v1:0-25560.chain
zcat psl/dm6.2bit:chrUn_CP007083v1:0-25537.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007083v1:0-25537.chain
zcat psl/dm6.2bit:chrUn_CP007101v1:0-24503.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007101v1:0-24503.chain
zcat psl/dm6.2bit:chrY_CP007117v1_random:0-24380.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007117v1_random:0-24380.chain
zcat psl/dm6.2bit:chrUn_CP007079v1:0-23238.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007079v1:0-23238.chain
zcat psl/dm6.2bit:chrUn_CP007086v1:0-22882.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007086v1:0-22882.chain
zcat psl/dm6.2bit:chrUn_CP007078v1:0-22604.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007078v1:0-22604.chain
zcat psl/dm6.2bit:chrY_CP007115v1_random:0-21921.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007115v1_random:0-21921.chain
zcat psl/dm6.2bit:chrUn_DS483723v1:0-21074.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483723v1:0-21074.chain
zcat psl/dm6.2bit:chrUn_CP007091v1:0-20763.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007091v1:0-20763.chain
zcat psl/dm6.2bit:chrUn_CP007071v1:0-19956.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007071v1:0-19956.chain
zcat psl/dm6.2bit:chrM:0-19524.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrM:0-19524.chain
zcat psl/dm6.2bit:chrUn_DS483709v1:0-18299.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483709v1:0-18299.chain
zcat psl/dm6.2bit:chrUn_CP007089v1:0-16157.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007089v1:0-16157.chain
zcat psl/dm6.2bit:chrUn_DS483734v1:0-15522.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483734v1:0-15522.chain
zcat psl/dm6.2bit:chrUn_DS483629v1:0-15417.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483629v1:0-15417.chain
zcat psl/dm6.2bit:chrUn_DS483735v1:0-15068.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483735v1:0-15068.chain
zcat psl/dm6.2bit:chrUn_DS483726v1:0-14983.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483726v1:0-14983.chain
zcat psl/dm6.2bit:chrUn_DS483711v1:0-14687.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483711v1:0-14687.chain
zcat psl/dm6.2bit:chrUn_DS483641v1:0-14503.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483641v1:0-14503.chain
zcat psl/dm6.2bit:chrUn_DS483712v1:0-14199.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483712v1:0-14199.chain
zcat psl/dm6.2bit:chrUn_DS483646v1:0-14098.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483646v1:0-14098.chain
zcat psl/dm6.2bit:chrUn_DS483647v1:0-14028.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483647v1:0-14028.chain
zcat psl/dm6.2bit:chrUn_DS483736v1:0-14006.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483736v1:0-14006.chain
zcat psl/dm6.2bit:chrX_DS483648v1_random:0-13940.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483648v1_random:0-13940.chain
zcat psl/dm6.2bit:chrUn_DS483649v1:0-13935.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483649v1:0-13935.chain
zcat psl/dm6.2bit:chrUn_DS483650v1:0-13906.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483650v1:0-13906.chain
zcat psl/dm6.2bit:chrUn_DS483737v1:0-13553.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483737v1:0-13553.chain
zcat psl/dm6.2bit:chrX_DS483655v1_random:0-13549.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483655v1_random:0-13549.chain
zcat psl/dm6.2bit:chrUn_DS483724v1:0-13501.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483724v1:0-13501.chain
zcat psl/dm6.2bit:chrUn_CP007097v1:0-13455.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007097v1:0-13455.chain
zcat psl/dm6.2bit:chrUn_DS483658v1:0-13455.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483658v1:0-13455.chain
zcat psl/dm6.2bit:chrUn_DS483659v1:0-13416.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483659v1:0-13416.chain
zcat psl/dm6.2bit:chrX_DS483660v1_random:0-13394.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483660v1_random:0-13394.chain
zcat psl/dm6.2bit:chrUn_DS483662v1:0-13317.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483662v1:0-13317.chain
zcat psl/dm6.2bit:chrUn_DS483663v1:0-13256.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483663v1:0-13256.chain
zcat psl/dm6.2bit:chrX_DS483665v1_random:0-13234.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483665v1_random:0-13234.chain
zcat psl/dm6.2bit:chrUn_CP007073v1:0-13157.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007073v1:0-13157.chain
zcat psl/dm6.2bit:chrX_DS483666v1_random:0-13108.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483666v1_random:0-13108.chain
zcat psl/dm6.2bit:chrY_DS483725v1_random:0-13079.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483725v1_random:0-13079.chain
zcat psl/dm6.2bit:chrUn_DS483738v1:0-12856.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483738v1:0-12856.chain
zcat psl/dm6.2bit:chrX_DS483669v1_random:0-12848.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483669v1_random:0-12848.chain
zcat psl/dm6.2bit:chrUn_DS483670v1:0-12827.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483670v1:0-12827.chain
zcat psl/dm6.2bit:chrUn_CP007102v1:0-12714.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007102v1:0-12714.chain
zcat psl/dm6.2bit:chrUn_DS483728v1:0-12681.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483728v1:0-12681.chain
zcat psl/dm6.2bit:chrUn_DS483673v1:0-12654.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483673v1:0-12654.chain
zcat psl/dm6.2bit:chrUn_CP007099v1:0-12632.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007099v1:0-12632.chain
zcat psl/dm6.2bit:chrUn_DS483674v1:0-12632.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483674v1:0-12632.chain
zcat psl/dm6.2bit:chrUn_DS483675v1:0-12536.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483675v1:0-12536.chain
zcat psl/dm6.2bit:chrY_DS483677v1_random:0-12513.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483677v1_random:0-12513.chain
zcat psl/dm6.2bit:chrUn_DS483739v1:0-12459.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483739v1:0-12459.chain
zcat psl/dm6.2bit:chrUn_DS483679v1:0-12424.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483679v1:0-12424.chain
zcat psl/dm6.2bit:chrUn_DS483678v1:0-12424.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483678v1:0-12424.chain
zcat psl/dm6.2bit:chrUn_DS483680v1:0-12399.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483680v1:0-12399.chain
zcat psl/dm6.2bit:chrUn_DS483681v1:0-12368.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483681v1:0-12368.chain
zcat psl/dm6.2bit:chrUn_DS483682v1:0-12354.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483682v1:0-12354.chain
zcat psl/dm6.2bit:chrX_DS483685v1_random:0-12187.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483685v1_random:0-12187.chain
zcat psl/dm6.2bit:chrUn_DS483686v1:0-12148.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483686v1:0-12148.chain
zcat psl/dm6.2bit:chrUn_DS483687v1:0-12142.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483687v1:0-12142.chain
zcat psl/dm6.2bit:chrUn_DS483688v1:0-12095.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483688v1:0-12095.chain
zcat psl/dm6.2bit:chrUn_DS483689v1:0-12034.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483689v1:0-12034.chain
zcat psl/dm6.2bit:chrUn_DS483719v1:0-12027.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483719v1:0-12027.chain
zcat psl/dm6.2bit:chrUn_DS483740v1:0-12002.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483740v1:0-12002.chain
zcat psl/dm6.2bit:chrY_DS483690v1_random:0-12001.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483690v1_random:0-12001.chain
zcat psl/dm6.2bit:chrX_DS484811v1_random:0-1452.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484811v1_random:0-1452.chain
zcat psl/dm6.2bit:chrUn_DS484812v1:0-1451.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484812v1:0-1451.chain
zcat psl/dm6.2bit:chrUn_DS484816v1:0-1446.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484816v1:0-1446.chain
zcat psl/dm6.2bit:chrUn_DS484815v1:0-1446.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484815v1:0-1446.chain
zcat psl/dm6.2bit:chrUn_DS484817v1:0-1445.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484817v1:0-1445.chain
zcat psl/dm6.2bit:chrY_DS484818v1_random:0-1443.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484818v1_random:0-1443.chain
zcat psl/dm6.2bit:chrX_DS484819v1_random:0-1441.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484819v1_random:0-1441.chain
zcat psl/dm6.2bit:chrY_DS484820v1_random:0-1440.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484820v1_random:0-1440.chain
zcat psl/dm6.2bit:chrUn_DS484822v1:0-1436.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484822v1:0-1436.chain
zcat psl/dm6.2bit:chrUn_DS484827v1:0-1432.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484827v1:0-1432.chain
zcat psl/dm6.2bit:chrUn_DS483692v1:0-11985.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483692v1:0-11985.chain
zcat psl/dm6.2bit:chrUn_DS484825v1:0-1432.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484825v1:0-1432.chain
zcat psl/dm6.2bit:chrX_DS484826v1_random:0-1432.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484826v1_random:0-1432.chain
zcat psl/dm6.2bit:chrUn_DS484828v1:0-1430.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484828v1:0-1430.chain
zcat psl/dm6.2bit:chrY_DS484830v1_random:0-1429.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484830v1_random:0-1429.chain
zcat psl/dm6.2bit:chrUn_DS484831v1:0-1429.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484831v1:0-1429.chain
zcat psl/dm6.2bit:chrX_DS484832v1_random:0-1425.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484832v1_random:0-1425.chain
zcat psl/dm6.2bit:chrUn_DS484836v1:0-1424.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484836v1:0-1424.chain
zcat psl/dm6.2bit:chrX_DS484833v1_random:0-1424.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484833v1_random:0-1424.chain
zcat psl/dm6.2bit:chrUn_DS484834v1:0-1424.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484834v1:0-1424.chain
zcat psl/dm6.2bit:chrX_DS484837v1_random:0-1423.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484837v1_random:0-1423.chain
zcat psl/dm6.2bit:chrUn_CP007075v1:0-11983.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007075v1:0-11983.chain
zcat psl/dm6.2bit:chrUn_DS484838v1:0-1422.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484838v1:0-1422.chain
zcat psl/dm6.2bit:chrX_DS484839v1_random:0-1421.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484839v1_random:0-1421.chain
zcat psl/dm6.2bit:chrX_DS484840v1_random:0-1419.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484840v1_random:0-1419.chain
zcat psl/dm6.2bit:chrUn_DS484841v1:0-1416.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484841v1:0-1416.chain
zcat psl/dm6.2bit:chrUn_DS484843v1:0-1416.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484843v1:0-1416.chain
zcat psl/dm6.2bit:chrUn_DS484842v1:0-1416.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484842v1:0-1416.chain
zcat psl/dm6.2bit:chrUn_DS484844v1:0-1415.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484844v1:0-1415.chain
zcat psl/dm6.2bit:chrX_DS484845v1_random:0-1412.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484845v1_random:0-1412.chain
zcat psl/dm6.2bit:chrUn_DS484846v1:0-1412.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484846v1:0-1412.chain
zcat psl/dm6.2bit:chrUn_DS484847v1:0-1411.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484847v1:0-1411.chain
zcat psl/dm6.2bit:chrUn_DS483693v1:0-11958.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483693v1:0-11958.chain
zcat psl/dm6.2bit:chrUn_DS484848v1:0-1410.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484848v1:0-1410.chain
zcat psl/dm6.2bit:chrUn_DS484851v1:0-1408.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484851v1:0-1408.chain
zcat psl/dm6.2bit:chrX_DS484850v1_random:0-1408.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484850v1_random:0-1408.chain
zcat psl/dm6.2bit:chrUn_DS484852v1:0-1407.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484852v1:0-1407.chain
zcat psl/dm6.2bit:chrUn_DS484853v1:0-1406.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484853v1:0-1406.chain
zcat psl/dm6.2bit:chrUn_DS484855v1:0-1404.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484855v1:0-1404.chain
zcat psl/dm6.2bit:chrX_DS484857v1_random:0-1402.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484857v1_random:0-1402.chain
zcat psl/dm6.2bit:chrUn_DS484861v1:0-1395.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484861v1:0-1395.chain
zcat psl/dm6.2bit:chrUn_DS484862v1:0-1394.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484862v1:0-1394.chain
zcat psl/dm6.2bit:chrY_DS484863v1_random:0-1393.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484863v1_random:0-1393.chain
zcat psl/dm6.2bit:chrUn_DS483694v1:0-11951.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483694v1:0-11951.chain
zcat psl/dm6.2bit:chrUn_DS484866v1:0-1391.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484866v1:0-1391.chain
zcat psl/dm6.2bit:chrUn_DS484869v1:0-1391.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484869v1:0-1391.chain
zcat psl/dm6.2bit:chrUn_DS484865v1:0-1391.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484865v1:0-1391.chain
zcat psl/dm6.2bit:chrX_DS484871v1_random:0-1386.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484871v1_random:0-1386.chain
zcat psl/dm6.2bit:chrUn_DS484870v1:0-1386.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484870v1:0-1386.chain
zcat psl/dm6.2bit:chrUn_DS484872v1:0-1385.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484872v1:0-1385.chain
zcat psl/dm6.2bit:chrUn_DS484874v1:0-1384.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484874v1:0-1384.chain
zcat psl/dm6.2bit:chrY_DS484875v1_random:0-1383.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484875v1_random:0-1383.chain
zcat psl/dm6.2bit:chrY_DS484876v1_random:0-1382.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484876v1_random:0-1382.chain
zcat psl/dm6.2bit:chrUn_DS484878v1:0-1381.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484878v1:0-1381.chain
zcat psl/dm6.2bit:chrUn_DS483741v1:0-11807.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483741v1:0-11807.chain
zcat psl/dm6.2bit:chrX_DS484879v1_random:0-1381.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484879v1_random:0-1381.chain
zcat psl/dm6.2bit:chrX_DS484880v1_random:0-1380.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484880v1_random:0-1380.chain
zcat psl/dm6.2bit:chrUn_DS484881v1:0-1380.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484881v1:0-1380.chain
zcat psl/dm6.2bit:chrUn_DS484882v1:0-1379.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484882v1:0-1379.chain
zcat psl/dm6.2bit:chrUn_DS484884v1:0-1378.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484884v1:0-1378.chain
zcat psl/dm6.2bit:chrUn_DS484889v1:0-1377.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484889v1:0-1377.chain
zcat psl/dm6.2bit:chrUn_DS484887v1:0-1377.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484887v1:0-1377.chain
zcat psl/dm6.2bit:chrUn_DS484886v1:0-1377.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484886v1:0-1377.chain
zcat psl/dm6.2bit:chrUn_DS484888v1:0-1377.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484888v1:0-1377.chain
zcat psl/dm6.2bit:chrX_DS484890v1_random:0-1376.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484890v1_random:0-1376.chain
zcat psl/dm6.2bit:chrY_DS483742v1_random:0-11763.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483742v1_random:0-11763.chain
zcat psl/dm6.2bit:chrUn_DS484894v1:0-1375.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484894v1:0-1375.chain
zcat psl/dm6.2bit:chrUn_DS484896v1:0-1374.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484896v1:0-1374.chain
zcat psl/dm6.2bit:chrUn_DS484895v1:0-1374.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484895v1:0-1374.chain
zcat psl/dm6.2bit:chrUn_DS484897v1:0-1373.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484897v1:0-1373.chain
zcat psl/dm6.2bit:chrUn_DS484898v1:0-1371.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484898v1:0-1371.chain
zcat psl/dm6.2bit:chrUn_DS484899v1:0-1369.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484899v1:0-1369.chain
zcat psl/dm6.2bit:chrUn_DS484901v1:0-1368.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484901v1:0-1368.chain
zcat psl/dm6.2bit:chrUn_DS484904v1:0-1366.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484904v1:0-1366.chain
zcat psl/dm6.2bit:chrX_DS484907v1_random:0-1361.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484907v1_random:0-1361.chain
zcat psl/dm6.2bit:chrY_DS484908v1_random:0-1360.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484908v1_random:0-1360.chain
zcat psl/dm6.2bit:chrUn_DS483695v1:0-11743.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483695v1:0-11743.chain
zcat psl/dm6.2bit:chrY_DS484909v1_random:0-1356.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484909v1_random:0-1356.chain
zcat psl/dm6.2bit:chrUn_DS484910v1:0-1356.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484910v1:0-1356.chain
zcat psl/dm6.2bit:chrX_DS484911v1_random:0-1355.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484911v1_random:0-1355.chain
zcat psl/dm6.2bit:chrX_DS484913v1_random:0-1355.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484913v1_random:0-1355.chain
zcat psl/dm6.2bit:chrUn_DS484916v1:0-1352.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484916v1:0-1352.chain
zcat psl/dm6.2bit:chrUn_DS484917v1:0-1351.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484917v1:0-1351.chain
zcat psl/dm6.2bit:chrUn_DS484919v1:0-1347.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484919v1:0-1347.chain
zcat psl/dm6.2bit:chrUn_DS484920v1:0-1347.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484920v1:0-1347.chain
zcat psl/dm6.2bit:chrUn_DS484921v1:0-1346.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484921v1:0-1346.chain
zcat psl/dm6.2bit:chrUn_DS484922v1:0-1344.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484922v1:0-1344.chain
zcat psl/dm6.2bit:chrUn_DS483743v1:0-11569.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483743v1:0-11569.chain
zcat psl/dm6.2bit:chrUn_DS484923v1:0-1343.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484923v1:0-1343.chain
zcat psl/dm6.2bit:chrY_DS484924v1_random:0-1341.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484924v1_random:0-1341.chain
zcat psl/dm6.2bit:chrUn_DS484927v1:0-1340.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484927v1:0-1340.chain
zcat psl/dm6.2bit:chrX_DS484928v1_random:0-1340.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484928v1_random:0-1340.chain
zcat psl/dm6.2bit:chrUn_DS484926v1:0-1340.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484926v1:0-1340.chain
zcat psl/dm6.2bit:chrUn_DS484929v1:0-1339.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484929v1:0-1339.chain
zcat psl/dm6.2bit:chrUn_DS484930v1:0-1339.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484930v1:0-1339.chain
zcat psl/dm6.2bit:chrUn_DS484932v1:0-1337.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484932v1:0-1337.chain
zcat psl/dm6.2bit:chrUn_DS484933v1:0-1337.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484933v1:0-1337.chain
zcat psl/dm6.2bit:chrX_DS484935v1_random:0-1336.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484935v1_random:0-1336.chain
zcat psl/dm6.2bit:chrX_DS483698v1_random:0-11522.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483698v1_random:0-11522.chain
zcat psl/dm6.2bit:chrUn_DS484938v1:0-1334.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484938v1:0-1334.chain
zcat psl/dm6.2bit:chrY_DS484942v1_random:0-1333.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484942v1_random:0-1333.chain
zcat psl/dm6.2bit:chrUn_DS484940v1:0-1333.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484940v1:0-1333.chain
zcat psl/dm6.2bit:chrUn_DS484941v1:0-1333.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484941v1:0-1333.chain
zcat psl/dm6.2bit:chrUn_DS484943v1:0-1332.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484943v1:0-1332.chain
zcat psl/dm6.2bit:chrUn_DS484944v1:0-1330.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484944v1:0-1330.chain
zcat psl/dm6.2bit:chrY_DS484945v1_random:0-1330.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484945v1_random:0-1330.chain
zcat psl/dm6.2bit:chrUn_DS484948v1:0-1328.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484948v1:0-1328.chain
zcat psl/dm6.2bit:chrX_DS484951v1_random:0-1327.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484951v1_random:0-1327.chain
zcat psl/dm6.2bit:chrX_DS484953v1_random:0-1326.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484953v1_random:0-1326.chain
zcat psl/dm6.2bit:chrY_CP007119v1_random:0-11498.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_CP007119v1_random:0-11498.chain
zcat psl/dm6.2bit:chrX_DS484952v1_random:0-1326.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484952v1_random:0-1326.chain
zcat psl/dm6.2bit:chrX_DS484955v1_random:0-1323.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484955v1_random:0-1323.chain
zcat psl/dm6.2bit:chrUn_DS484954v1:0-1323.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484954v1:0-1323.chain
zcat psl/dm6.2bit:chrY_DS484956v1_random:0-1322.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484956v1_random:0-1322.chain
zcat psl/dm6.2bit:chrUn_DS484960v1:0-1316.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484960v1:0-1316.chain
zcat psl/dm6.2bit:chrX_DS484961v1_random:0-1315.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484961v1_random:0-1315.chain
zcat psl/dm6.2bit:chrUn_DS484962v1:0-1315.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484962v1:0-1315.chain
zcat psl/dm6.2bit:chrUn_DS484964v1:0-1315.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484964v1:0-1315.chain
zcat psl/dm6.2bit:chrX_DS484963v1_random:0-1315.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484963v1_random:0-1315.chain
zcat psl/dm6.2bit:chrX_DS484965v1_random:0-1312.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484965v1_random:0-1312.chain
zcat psl/dm6.2bit:chrUn_DS483700v1:0-11430.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483700v1:0-11430.chain
zcat psl/dm6.2bit:chrX_DS484968v1_random:0-1311.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484968v1_random:0-1311.chain
zcat psl/dm6.2bit:chrUn_DS484967v1:0-1311.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484967v1:0-1311.chain
zcat psl/dm6.2bit:chrX_DS484970v1_random:0-1310.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484970v1_random:0-1310.chain
zcat psl/dm6.2bit:chrUn_DS484972v1:0-1310.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484972v1:0-1310.chain
zcat psl/dm6.2bit:chrX_DS484974v1_random:0-1309.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484974v1_random:0-1309.chain
zcat psl/dm6.2bit:chrUn_DS484976v1:0-1308.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484976v1:0-1308.chain
zcat psl/dm6.2bit:chrX_DS484978v1_random:0-1306.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484978v1_random:0-1306.chain
zcat psl/dm6.2bit:chrUn_DS484984v1:0-1304.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484984v1:0-1304.chain
zcat psl/dm6.2bit:chrY_DS484983v1_random:0-1304.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484983v1_random:0-1304.chain
zcat psl/dm6.2bit:chrUn_DS484982v1:0-1304.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484982v1:0-1304.chain
zcat psl/dm6.2bit:chrUn_DS483701v1:0-11220.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483701v1:0-11220.chain
zcat psl/dm6.2bit:chrUn_DS484979v1:0-1304.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484979v1:0-1304.chain
zcat psl/dm6.2bit:chrUn_DS484985v1:0-1303.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484985v1:0-1303.chain
zcat psl/dm6.2bit:chrY_DS484986v1_random:0-1303.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484986v1_random:0-1303.chain
zcat psl/dm6.2bit:chrUn_DS484987v1:0-1302.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484987v1:0-1302.chain
zcat psl/dm6.2bit:chrX_DS484990v1_random:0-1301.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484990v1_random:0-1301.chain
zcat psl/dm6.2bit:chrUn_DS484988v1:0-1301.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484988v1:0-1301.chain
zcat psl/dm6.2bit:chrUn_DS484991v1:0-1299.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484991v1:0-1299.chain
zcat psl/dm6.2bit:chrY_DS484992v1_random:0-1297.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484992v1_random:0-1297.chain
zcat psl/dm6.2bit:chrY_DS484994v1_random:0-1297.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484994v1_random:0-1297.chain
zcat psl/dm6.2bit:chrUn_DS484993v1:0-1297.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484993v1:0-1297.chain
zcat psl/dm6.2bit:chrUn_DS483702v1:0-11148.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483702v1:0-11148.chain
zcat psl/dm6.2bit:chrX_DS484995v1_random:0-1296.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484995v1_random:0-1296.chain
zcat psl/dm6.2bit:chrX_DS484996v1_random:0-1295.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484996v1_random:0-1295.chain
zcat psl/dm6.2bit:chrUn_DS484999v1:0-1294.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484999v1:0-1294.chain
zcat psl/dm6.2bit:chrUn_DS484998v1:0-1294.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484998v1:0-1294.chain
zcat psl/dm6.2bit:chrX_DS484997v1_random:0-1294.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484997v1_random:0-1294.chain
zcat psl/dm6.2bit:chrUn_DS485000v1:0-1293.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485000v1:0-1293.chain
zcat psl/dm6.2bit:chrUn_DS485002v1:0-1291.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485002v1:0-1291.chain
zcat psl/dm6.2bit:chrUn_DS485004v1:0-1290.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485004v1:0-1290.chain
zcat psl/dm6.2bit:chrUn_DS485005v1:0-1289.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485005v1:0-1289.chain
zcat psl/dm6.2bit:chrUn_DS485007v1:0-1287.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485007v1:0-1287.chain
zcat psl/dm6.2bit:chrUn_DS483703v1:0-11126.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483703v1:0-11126.chain
zcat psl/dm6.2bit:chrUn_DS485010v1:0-1286.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485010v1:0-1286.chain
zcat psl/dm6.2bit:chrUn_DS485011v1:0-1285.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485011v1:0-1285.chain
zcat psl/dm6.2bit:chrY_DS485013v1_random:0-1284.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485013v1_random:0-1284.chain
zcat psl/dm6.2bit:chrX_DS485012v1_random:0-1284.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485012v1_random:0-1284.chain
zcat psl/dm6.2bit:chrX_DS485015v1_random:0-1283.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485015v1_random:0-1283.chain
zcat psl/dm6.2bit:chrY_DS485014v1_random:0-1283.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485014v1_random:0-1283.chain
zcat psl/dm6.2bit:chrY_DS485016v1_random:0-1282.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485016v1_random:0-1282.chain
zcat psl/dm6.2bit:chrX_DS485017v1_random:0-1281.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485017v1_random:0-1281.chain
zcat psl/dm6.2bit:chrUn_DS485019v1:0-1280.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485019v1:0-1280.chain
zcat psl/dm6.2bit:chrUn_DS485020v1:0-1280.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485020v1:0-1280.chain
zcat psl/dm6.2bit:chrUn_CP007100v1:0-10091.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_CP007100v1:0-10091.chain
zcat psl/dm6.2bit:chrUn_DS485022v1:0-1279.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485022v1:0-1279.chain
zcat psl/dm6.2bit:chrUn_DS485025v1:0-1278.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485025v1:0-1278.chain
zcat psl/dm6.2bit:chrUn_DS485026v1:0-1278.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485026v1:0-1278.chain
zcat psl/dm6.2bit:chrUn_DS485024v1:0-1278.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485024v1:0-1278.chain
zcat psl/dm6.2bit:chrUn_DS485027v1:0-1277.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485027v1:0-1277.chain
zcat psl/dm6.2bit:chrUn_DS485029v1:0-1277.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485029v1:0-1277.chain
zcat psl/dm6.2bit:chrY_DS485028v1_random:0-1277.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485028v1_random:0-1277.chain
zcat psl/dm6.2bit:chrUn_DS485030v1:0-1276.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485030v1:0-1276.chain
zcat psl/dm6.2bit:chrUn_DS485031v1:0-1275.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485031v1:0-1275.chain
zcat psl/dm6.2bit:chrUn_DS485032v1:0-1275.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485032v1:0-1275.chain
zcat psl/dm6.2bit:chrUn_DS483744v1:0-9865.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483744v1:0-9865.chain
zcat psl/dm6.2bit:chrUn_DS485036v1:0-1274.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485036v1:0-1274.chain
zcat psl/dm6.2bit:chrUn_DS485035v1:0-1274.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485035v1:0-1274.chain
zcat psl/dm6.2bit:chrUn_DS485038v1:0-1272.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485038v1:0-1272.chain
zcat psl/dm6.2bit:chrUn_DS485041v1:0-1271.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485041v1:0-1271.chain
zcat psl/dm6.2bit:chrY_DS485042v1_random:0-1271.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485042v1_random:0-1271.chain
zcat psl/dm6.2bit:chrX_DS485044v1_random:0-1271.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485044v1_random:0-1271.chain
zcat psl/dm6.2bit:chrX_DS485043v1_random:0-1271.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485043v1_random:0-1271.chain
zcat psl/dm6.2bit:chrUn_DS485045v1:0-1271.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485045v1:0-1271.chain
zcat psl/dm6.2bit:chrY_DS485048v1_random:0-1270.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485048v1_random:0-1270.chain
zcat psl/dm6.2bit:chrUn_DS485046v1:0-1270.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485046v1:0-1270.chain
zcat psl/dm6.2bit:chrX_DS483745v1_random:0-9368.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483745v1_random:0-9368.chain
zcat psl/dm6.2bit:chrUn_DS485047v1:0-1270.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485047v1:0-1270.chain
zcat psl/dm6.2bit:chrX_DS485049v1_random:0-1269.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485049v1_random:0-1269.chain
zcat psl/dm6.2bit:chrY_DS485051v1_random:0-1268.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485051v1_random:0-1268.chain
zcat psl/dm6.2bit:chrX_DS485050v1_random:0-1268.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485050v1_random:0-1268.chain
zcat psl/dm6.2bit:chrUn_DS485053v1:0-1266.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485053v1:0-1266.chain
zcat psl/dm6.2bit:chrX_DS485054v1_random:0-1265.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485054v1_random:0-1265.chain
zcat psl/dm6.2bit:chrUn_DS485055v1:0-1264.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485055v1:0-1264.chain
zcat psl/dm6.2bit:chrUn_DS485056v1:0-1263.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485056v1:0-1263.chain
zcat psl/dm6.2bit:chrUn_DS485058v1:0-1263.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485058v1:0-1263.chain
zcat psl/dm6.2bit:chrUn_DS485059v1:0-1263.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485059v1:0-1263.chain
zcat psl/dm6.2bit:chrUn_DS483746v1:0-9341.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483746v1:0-9341.chain
zcat psl/dm6.2bit:chrUn_DS485064v1:0-1262.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485064v1:0-1262.chain
zcat psl/dm6.2bit:chrUn_DS485065v1:0-1262.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485065v1:0-1262.chain
zcat psl/dm6.2bit:chrUn_DS485062v1:0-1262.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485062v1:0-1262.chain
zcat psl/dm6.2bit:chrUn_DS485067v1:0-1261.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485067v1:0-1261.chain
zcat psl/dm6.2bit:chrUn_DS485066v1:0-1261.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485066v1:0-1261.chain
zcat psl/dm6.2bit:chrX_DS485072v1_random:0-1260.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485072v1_random:0-1260.chain
zcat psl/dm6.2bit:chrY_DS485070v1_random:0-1260.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485070v1_random:0-1260.chain
zcat psl/dm6.2bit:chrUn_DS485068v1:0-1260.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485068v1:0-1260.chain
zcat psl/dm6.2bit:chrUn_DS485071v1:0-1260.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485071v1:0-1260.chain
zcat psl/dm6.2bit:chrUn_DS485073v1:0-1259.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485073v1:0-1259.chain
zcat psl/dm6.2bit:chrUn_DS483748v1:0-8346.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483748v1:0-8346.chain
zcat psl/dm6.2bit:chrUn_DS485076v1:0-1258.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485076v1:0-1258.chain
zcat psl/dm6.2bit:chrX_DS485077v1_random:0-1258.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485077v1_random:0-1258.chain
zcat psl/dm6.2bit:chrX_DS485074v1_random:0-1258.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485074v1_random:0-1258.chain
zcat psl/dm6.2bit:chrX_DS485078v1_random:0-1257.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485078v1_random:0-1257.chain
zcat psl/dm6.2bit:chrX_DS485080v1_random:0-1253.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485080v1_random:0-1253.chain
zcat psl/dm6.2bit:chrUn_DS485079v1:0-1253.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485079v1:0-1253.chain
zcat psl/dm6.2bit:chrX_DS485081v1_random:0-1252.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485081v1_random:0-1252.chain
zcat psl/dm6.2bit:chrUn_DS485085v1:0-1251.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485085v1:0-1251.chain
zcat psl/dm6.2bit:chrUn_DS485083v1:0-1251.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485083v1:0-1251.chain
zcat psl/dm6.2bit:chrUn_DS485082v1:0-1251.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485082v1:0-1251.chain
zcat psl/dm6.2bit:chrUn_DS483749v1:0-8007.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483749v1:0-8007.chain
zcat psl/dm6.2bit:chrX_DS485084v1_random:0-1251.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485084v1_random:0-1251.chain
zcat psl/dm6.2bit:chrUn_DS485086v1:0-1250.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485086v1:0-1250.chain
zcat psl/dm6.2bit:chrUn_DS485087v1:0-1249.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485087v1:0-1249.chain
zcat psl/dm6.2bit:chrUn_DS485088v1:0-1248.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485088v1:0-1248.chain
zcat psl/dm6.2bit:chrUn_DS485089v1:0-1247.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485089v1:0-1247.chain
zcat psl/dm6.2bit:chrUn_DS485091v1:0-1246.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485091v1:0-1246.chain
zcat psl/dm6.2bit:chrUn_DS485092v1:0-1246.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485092v1:0-1246.chain
zcat psl/dm6.2bit:chrX_DS485096v1_random:0-1244.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485096v1_random:0-1244.chain
zcat psl/dm6.2bit:chrY_DS485097v1_random:0-1243.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485097v1_random:0-1243.chain
zcat psl/dm6.2bit:chrUn_DS485098v1:0-1242.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485098v1:0-1242.chain
zcat psl/dm6.2bit:chrUn_DS483750v1:0-7722.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483750v1:0-7722.chain
zcat psl/dm6.2bit:chrY_DS485099v1_random:0-1241.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485099v1_random:0-1241.chain
zcat psl/dm6.2bit:chrX_DS485101v1_random:0-1241.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485101v1_random:0-1241.chain
zcat psl/dm6.2bit:chrUn_DS485100v1:0-1241.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485100v1:0-1241.chain
zcat psl/dm6.2bit:chrUn_DS485102v1:0-1240.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485102v1:0-1240.chain
zcat psl/dm6.2bit:chrX_DS485104v1_random:0-1240.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485104v1_random:0-1240.chain
zcat psl/dm6.2bit:chrUn_DS485105v1:0-1240.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485105v1:0-1240.chain
zcat psl/dm6.2bit:chrUn_DS485107v1:0-1239.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485107v1:0-1239.chain
zcat psl/dm6.2bit:chrX_DS485110v1_random:0-1238.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485110v1_random:0-1238.chain
zcat psl/dm6.2bit:chrX_DS485112v1_random:0-1238.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485112v1_random:0-1238.chain
zcat psl/dm6.2bit:chrX_DS485109v1_random:0-1238.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485109v1_random:0-1238.chain
zcat psl/dm6.2bit:chrUn_DS483751v1:0-7314.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483751v1:0-7314.chain
zcat psl/dm6.2bit:chrX_DS485111v1_random:0-1238.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485111v1_random:0-1238.chain
zcat psl/dm6.2bit:chrY_DS485113v1_random:0-1237.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485113v1_random:0-1237.chain
zcat psl/dm6.2bit:chrUn_DS485117v1:0-1236.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485117v1:0-1236.chain
zcat psl/dm6.2bit:chrX_DS485119v1_random:0-1235.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485119v1_random:0-1235.chain
zcat psl/dm6.2bit:chrUn_DS485118v1:0-1235.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485118v1:0-1235.chain
zcat psl/dm6.2bit:chrUn_DS485122v1:0-1234.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485122v1:0-1234.chain
zcat psl/dm6.2bit:chrUn_DS485125v1:0-1234.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485125v1:0-1234.chain
zcat psl/dm6.2bit:chrUn_DS485123v1:0-1234.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485123v1:0-1234.chain
zcat psl/dm6.2bit:chrUn_DS485127v1:0-1233.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485127v1:0-1233.chain
zcat psl/dm6.2bit:chrX_DS485126v1_random:0-1233.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485126v1_random:0-1233.chain
zcat psl/dm6.2bit:chrUn_DS483753v1:0-7123.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483753v1:0-7123.chain
zcat psl/dm6.2bit:chrUn_DS485130v1:0-1232.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485130v1:0-1232.chain
zcat psl/dm6.2bit:chrUn_DS485133v1:0-1231.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485133v1:0-1231.chain
zcat psl/dm6.2bit:chrUn_DS485134v1:0-1231.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485134v1:0-1231.chain
zcat psl/dm6.2bit:chrUn_DS485132v1:0-1231.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485132v1:0-1231.chain
zcat psl/dm6.2bit:chrUn_DS485136v1:0-1231.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485136v1:0-1231.chain
zcat psl/dm6.2bit:chrY_DS485137v1_random:0-1230.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485137v1_random:0-1230.chain
zcat psl/dm6.2bit:chrUn_DS485138v1:0-1229.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485138v1:0-1229.chain
zcat psl/dm6.2bit:chrUn_DS485140v1:0-1229.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485140v1:0-1229.chain
zcat psl/dm6.2bit:chrX_DS485141v1_random:0-1228.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485141v1_random:0-1228.chain
zcat psl/dm6.2bit:chrUn_DS485146v1:0-1227.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485146v1:0-1227.chain
zcat psl/dm6.2bit:chrUn_DS483754v1:0-7003.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483754v1:0-7003.chain
zcat psl/dm6.2bit:chrUn_DS485148v1:0-1227.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485148v1:0-1227.chain
zcat psl/dm6.2bit:chrUn_DS485144v1:0-1227.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485144v1:0-1227.chain
zcat psl/dm6.2bit:chrY_DS485143v1_random:0-1227.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485143v1_random:0-1227.chain
zcat psl/dm6.2bit:chrUn_DS485150v1:0-1226.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485150v1:0-1226.chain
zcat psl/dm6.2bit:chrUn_DS485149v1:0-1226.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485149v1:0-1226.chain
zcat psl/dm6.2bit:chrUn_DS485151v1:0-1226.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485151v1:0-1226.chain
zcat psl/dm6.2bit:chrUn_DS485152v1:0-1225.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485152v1:0-1225.chain
zcat psl/dm6.2bit:chrUn_DS485156v1:0-1225.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485156v1:0-1225.chain
zcat psl/dm6.2bit:chrUn_DS485155v1:0-1225.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485155v1:0-1225.chain
zcat psl/dm6.2bit:chrUn_DS485157v1:0-1225.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485157v1:0-1225.chain
zcat psl/dm6.2bit:chrUn_DS483755v1:0-6936.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483755v1:0-6936.chain
zcat psl/dm6.2bit:chrUn_DS485153v1:0-1225.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485153v1:0-1225.chain
zcat psl/dm6.2bit:chrUn_DS485154v1:0-1225.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485154v1:0-1225.chain
zcat psl/dm6.2bit:chrY_DS485158v1_random:0-1224.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485158v1_random:0-1224.chain
zcat psl/dm6.2bit:chrUn_DS485160v1:0-1224.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485160v1:0-1224.chain
zcat psl/dm6.2bit:chrY_DS485159v1_random:0-1224.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485159v1_random:0-1224.chain
zcat psl/dm6.2bit:chrUn_DS485161v1:0-1224.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485161v1:0-1224.chain
zcat psl/dm6.2bit:chrUn_DS485162v1:0-1223.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485162v1:0-1223.chain
zcat psl/dm6.2bit:chrX_DS485164v1_random:0-1223.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485164v1_random:0-1223.chain
zcat psl/dm6.2bit:chrUn_DS485163v1:0-1223.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485163v1:0-1223.chain
zcat psl/dm6.2bit:chrUn_DS485165v1:0-1222.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485165v1:0-1222.chain
zcat psl/dm6.2bit:chrUn_DS483757v1:0-6900.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483757v1:0-6900.chain
zcat psl/dm6.2bit:chrY_DS485166v1_random:0-1222.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485166v1_random:0-1222.chain
zcat psl/dm6.2bit:chrX_DS485167v1_random:0-1221.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485167v1_random:0-1221.chain
zcat psl/dm6.2bit:chrX_DS485172v1_random:0-1220.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485172v1_random:0-1220.chain
zcat psl/dm6.2bit:chrUn_DS485169v1:0-1220.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485169v1:0-1220.chain
zcat psl/dm6.2bit:chrUn_DS485174v1:0-1219.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485174v1:0-1219.chain
zcat psl/dm6.2bit:chrUn_DS485173v1:0-1219.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485173v1:0-1219.chain
zcat psl/dm6.2bit:chrUn_DS485176v1:0-1219.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485176v1:0-1219.chain
zcat psl/dm6.2bit:chrY_DS485178v1_random:0-1218.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485178v1_random:0-1218.chain
zcat psl/dm6.2bit:chrUn_DS485177v1:0-1218.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485177v1:0-1218.chain
zcat psl/dm6.2bit:chrUn_DS485181v1:0-1214.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485181v1:0-1214.chain
zcat psl/dm6.2bit:chrUn_DS483759v1:0-6860.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483759v1:0-6860.chain
zcat psl/dm6.2bit:chrUn_DS485182v1:0-1213.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485182v1:0-1213.chain
zcat psl/dm6.2bit:chrUn_DS485184v1:0-1212.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485184v1:0-1212.chain
zcat psl/dm6.2bit:chrX_DS485186v1_random:0-1212.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485186v1_random:0-1212.chain
zcat psl/dm6.2bit:chrUn_DS485190v1:0-1211.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485190v1:0-1211.chain
zcat psl/dm6.2bit:chrX_DS485189v1_random:0-1211.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485189v1_random:0-1211.chain
zcat psl/dm6.2bit:chrUn_DS485192v1:0-1210.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485192v1:0-1210.chain
zcat psl/dm6.2bit:chrUn_DS485194v1:0-1209.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485194v1:0-1209.chain
zcat psl/dm6.2bit:chrX_DS485195v1_random:0-1209.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485195v1_random:0-1209.chain
zcat psl/dm6.2bit:chrUn_DS485198v1:0-1209.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485198v1:0-1209.chain
zcat psl/dm6.2bit:chrX_DS485201v1_random:0-1208.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485201v1_random:0-1208.chain
zcat psl/dm6.2bit:chrUn_DS483758v1:0-6860.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483758v1:0-6860.chain
zcat psl/dm6.2bit:chrUn_DS485200v1:0-1208.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485200v1:0-1208.chain
zcat psl/dm6.2bit:chrUn_DS485199v1:0-1208.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485199v1:0-1208.chain
zcat psl/dm6.2bit:chrUn_DS485203v1:0-1208.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485203v1:0-1208.chain
zcat psl/dm6.2bit:chrUn_DS485204v1:0-1207.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485204v1:0-1207.chain
zcat psl/dm6.2bit:chrUn_DS485205v1:0-1206.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485205v1:0-1206.chain
zcat psl/dm6.2bit:chrUn_DS485208v1:0-1205.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485208v1:0-1205.chain
zcat psl/dm6.2bit:chrUn_DS485211v1:0-1205.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485211v1:0-1205.chain
zcat psl/dm6.2bit:chrUn_DS485209v1:0-1205.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485209v1:0-1205.chain
zcat psl/dm6.2bit:chrUn_DS485216v1:0-1203.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485216v1:0-1203.chain
zcat psl/dm6.2bit:chrUn_DS485218v1:0-1203.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485218v1:0-1203.chain
zcat psl/dm6.2bit:chrUn_DS483760v1:0-6825.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483760v1:0-6825.chain
zcat psl/dm6.2bit:chrUn_DS485215v1:0-1203.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485215v1:0-1203.chain
zcat psl/dm6.2bit:chrUn_DS485220v1:0-1202.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485220v1:0-1202.chain
zcat psl/dm6.2bit:chrY_DS485219v1_random:0-1202.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485219v1_random:0-1202.chain
zcat psl/dm6.2bit:chrUn_DS485221v1:0-1201.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485221v1:0-1201.chain
zcat psl/dm6.2bit:chrX_DS485225v1_random:0-1200.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485225v1_random:0-1200.chain
zcat psl/dm6.2bit:chrUn_DS485224v1:0-1200.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485224v1:0-1200.chain
zcat psl/dm6.2bit:chrUn_DS485223v1:0-1200.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485223v1:0-1200.chain
zcat psl/dm6.2bit:chrUn_DS485227v1:0-1199.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485227v1:0-1199.chain
zcat psl/dm6.2bit:chrUn_DS485226v1:0-1199.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485226v1:0-1199.chain
zcat psl/dm6.2bit:chrUn_DS485228v1:0-1198.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485228v1:0-1198.chain
zcat psl/dm6.2bit:chrUn_DS483762v1:0-6698.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483762v1:0-6698.chain
zcat psl/dm6.2bit:chrUn_DS485229v1:0-1198.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485229v1:0-1198.chain
zcat psl/dm6.2bit:chrUn_DS485230v1:0-1197.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485230v1:0-1197.chain
zcat psl/dm6.2bit:chrUn_DS485233v1:0-1197.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485233v1:0-1197.chain
zcat psl/dm6.2bit:chrUn_DS485240v1:0-1195.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485240v1:0-1195.chain
zcat psl/dm6.2bit:chrY_DS485236v1_random:0-1195.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485236v1_random:0-1195.chain
zcat psl/dm6.2bit:chrX_DS485238v1_random:0-1195.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485238v1_random:0-1195.chain
zcat psl/dm6.2bit:chrUn_DS485239v1:0-1195.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485239v1:0-1195.chain
zcat psl/dm6.2bit:chrX_DS485235v1_random:0-1195.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485235v1_random:0-1195.chain
zcat psl/dm6.2bit:chrUn_DS485242v1:0-1194.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485242v1:0-1194.chain
zcat psl/dm6.2bit:chrUn_DS485243v1:0-1193.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485243v1:0-1193.chain
zcat psl/dm6.2bit:chrUn_DS483763v1:0-6546.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483763v1:0-6546.chain
zcat psl/dm6.2bit:chrUn_DS485245v1:0-1193.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485245v1:0-1193.chain
zcat psl/dm6.2bit:chrUn_DS485247v1:0-1193.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485247v1:0-1193.chain
zcat psl/dm6.2bit:chrUn_DS485246v1:0-1193.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485246v1:0-1193.chain
zcat psl/dm6.2bit:chrY_DS485250v1_random:0-1192.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485250v1_random:0-1192.chain
zcat psl/dm6.2bit:chrUn_DS485251v1:0-1192.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485251v1:0-1192.chain
zcat psl/dm6.2bit:chrUn_DS485249v1:0-1192.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485249v1:0-1192.chain
zcat psl/dm6.2bit:chrUn_DS485252v1:0-1191.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485252v1:0-1191.chain
zcat psl/dm6.2bit:chrUn_DS485253v1:0-1191.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485253v1:0-1191.chain
zcat psl/dm6.2bit:chrUn_DS485256v1:0-1190.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485256v1:0-1190.chain
zcat psl/dm6.2bit:chrUn_DS485255v1:0-1190.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485255v1:0-1190.chain
zcat psl/dm6.2bit:chrUn_DS483767v1:0-6396.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483767v1:0-6396.chain
zcat psl/dm6.2bit:chrUn_DS485254v1:0-1190.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485254v1:0-1190.chain
zcat psl/dm6.2bit:chrUn_DS485259v1:0-1189.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485259v1:0-1189.chain
zcat psl/dm6.2bit:chrX_DS485262v1_random:0-1189.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485262v1_random:0-1189.chain
zcat psl/dm6.2bit:chrUn_DS485258v1:0-1189.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485258v1:0-1189.chain
zcat psl/dm6.2bit:chrX_DS485257v1_random:0-1189.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485257v1_random:0-1189.chain
zcat psl/dm6.2bit:chrUn_DS485260v1:0-1189.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485260v1:0-1189.chain
zcat psl/dm6.2bit:chrUn_DS485261v1:0-1189.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485261v1:0-1189.chain
zcat psl/dm6.2bit:chrUn_DS485263v1:0-1188.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485263v1:0-1188.chain
zcat psl/dm6.2bit:chrX_DS485268v1_random:0-1186.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485268v1_random:0-1186.chain
zcat psl/dm6.2bit:chrUn_DS485264v1:0-1186.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485264v1:0-1186.chain
zcat psl/dm6.2bit:chrUn_DS483768v1:0-6294.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483768v1:0-6294.chain
zcat psl/dm6.2bit:chrUn_DS485265v1:0-1186.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485265v1:0-1186.chain
zcat psl/dm6.2bit:chrX_DS485266v1_random:0-1186.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485266v1_random:0-1186.chain
zcat psl/dm6.2bit:chrY_DS485267v1_random:0-1186.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485267v1_random:0-1186.chain
zcat psl/dm6.2bit:chrX_DS485271v1_random:0-1185.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485271v1_random:0-1185.chain
zcat psl/dm6.2bit:chrUn_DS485275v1:0-1185.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485275v1:0-1185.chain
zcat psl/dm6.2bit:chrUn_DS485273v1:0-1185.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485273v1:0-1185.chain
zcat psl/dm6.2bit:chrUn_DS485270v1:0-1185.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485270v1:0-1185.chain
zcat psl/dm6.2bit:chrUn_DS485280v1:0-1184.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485280v1:0-1184.chain
zcat psl/dm6.2bit:chrX_DS485277v1_random:0-1184.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485277v1_random:0-1184.chain
zcat psl/dm6.2bit:chrX_DS485281v1_random:0-1184.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485281v1_random:0-1184.chain
zcat psl/dm6.2bit:chrUn_DS483769v1:0-6237.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483769v1:0-6237.chain
zcat psl/dm6.2bit:chrX_DS485278v1_random:0-1184.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485278v1_random:0-1184.chain
zcat psl/dm6.2bit:chrUn_DS485284v1:0-1182.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485284v1:0-1182.chain
zcat psl/dm6.2bit:chrY_DS485283v1_random:0-1182.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485283v1_random:0-1182.chain
zcat psl/dm6.2bit:chrY_DS485288v1_random:0-1181.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485288v1_random:0-1181.chain
zcat psl/dm6.2bit:chrX_DS485287v1_random:0-1181.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485287v1_random:0-1181.chain
zcat psl/dm6.2bit:chrUn_DS485285v1:0-1181.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485285v1:0-1181.chain
zcat psl/dm6.2bit:chrUn_DS485290v1:0-1179.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485290v1:0-1179.chain
zcat psl/dm6.2bit:chrUn_DS485292v1:0-1179.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485292v1:0-1179.chain
zcat psl/dm6.2bit:chrUn_DS485291v1:0-1179.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485291v1:0-1179.chain
zcat psl/dm6.2bit:chrUn_DS485298v1:0-1178.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485298v1:0-1178.chain
zcat psl/dm6.2bit:chrUn_DS483770v1:0-6193.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483770v1:0-6193.chain
zcat psl/dm6.2bit:chrX_DS485300v1_random:0-1178.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485300v1_random:0-1178.chain
zcat psl/dm6.2bit:chrUn_DS485297v1:0-1178.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485297v1:0-1178.chain
zcat psl/dm6.2bit:chrUn_DS485294v1:0-1178.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485294v1:0-1178.chain
zcat psl/dm6.2bit:chrUn_DS485296v1:0-1178.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485296v1:0-1178.chain
zcat psl/dm6.2bit:chrX_DS485299v1_random:0-1178.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485299v1_random:0-1178.chain
zcat psl/dm6.2bit:chrUn_DS485301v1:0-1177.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485301v1:0-1177.chain
zcat psl/dm6.2bit:chrY_DS485302v1_random:0-1176.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485302v1_random:0-1176.chain
zcat psl/dm6.2bit:chrUn_DS485304v1:0-1175.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485304v1:0-1175.chain
zcat psl/dm6.2bit:chrX_DS485303v1_random:0-1175.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485303v1_random:0-1175.chain
zcat psl/dm6.2bit:chrUn_DS485306v1:0-1174.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485306v1:0-1174.chain
zcat psl/dm6.2bit:chrUn_DS483772v1:0-6076.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483772v1:0-6076.chain
zcat psl/dm6.2bit:chrX_DS485305v1_random:0-1174.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485305v1_random:0-1174.chain
zcat psl/dm6.2bit:chrUn_DS485311v1:0-1173.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485311v1:0-1173.chain
zcat psl/dm6.2bit:chrX_DS485310v1_random:0-1173.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485310v1_random:0-1173.chain
zcat psl/dm6.2bit:chrUn_DS485309v1:0-1173.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485309v1:0-1173.chain
zcat psl/dm6.2bit:chrY_DS485316v1_random:0-1171.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485316v1_random:0-1171.chain
zcat psl/dm6.2bit:chrUn_DS485314v1:0-1171.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485314v1:0-1171.chain
zcat psl/dm6.2bit:chrY_DS485315v1_random:0-1171.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485315v1_random:0-1171.chain
zcat psl/dm6.2bit:chrUn_DS485313v1:0-1171.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485313v1:0-1171.chain
zcat psl/dm6.2bit:chrY_DS485318v1_random:0-1170.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485318v1_random:0-1170.chain
zcat psl/dm6.2bit:chrY_DS485320v1_random:0-1169.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485320v1_random:0-1169.chain
zcat psl/dm6.2bit:chrUn_DS483773v1:0-6062.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483773v1:0-6062.chain
zcat psl/dm6.2bit:chrUn_DS485319v1:0-1169.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485319v1:0-1169.chain
zcat psl/dm6.2bit:chrUn_DS485322v1:0-1168.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485322v1:0-1168.chain
zcat psl/dm6.2bit:chrUn_DS485324v1:0-1167.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485324v1:0-1167.chain
zcat psl/dm6.2bit:chrUn_DS485323v1:0-1167.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485323v1:0-1167.chain
zcat psl/dm6.2bit:chrUn_DS485325v1:0-1167.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485325v1:0-1167.chain
zcat psl/dm6.2bit:chrUn_DS485326v1:0-1166.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485326v1:0-1166.chain
zcat psl/dm6.2bit:chrY_DS485329v1_random:0-1166.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485329v1_random:0-1166.chain
zcat psl/dm6.2bit:chrY_DS485328v1_random:0-1166.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485328v1_random:0-1166.chain
zcat psl/dm6.2bit:chrUn_DS485330v1:0-1166.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485330v1:0-1166.chain
zcat psl/dm6.2bit:chrUn_DS485333v1:0-1165.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485333v1:0-1165.chain
zcat psl/dm6.2bit:chrUn_DS483774v1:0-6041.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483774v1:0-6041.chain
zcat psl/dm6.2bit:chrUn_DS485331v1:0-1165.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485331v1:0-1165.chain
zcat psl/dm6.2bit:chrX_DS485334v1_random:0-1164.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485334v1_random:0-1164.chain
zcat psl/dm6.2bit:chrUn_DS485337v1:0-1163.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485337v1:0-1163.chain
zcat psl/dm6.2bit:chrUn_DS485339v1:0-1163.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485339v1:0-1163.chain
zcat psl/dm6.2bit:chrUn_DS485340v1:0-1163.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485340v1:0-1163.chain
zcat psl/dm6.2bit:chrY_DS485335v1_random:0-1163.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485335v1_random:0-1163.chain
zcat psl/dm6.2bit:chrX_DS485336v1_random:0-1163.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485336v1_random:0-1163.chain
zcat psl/dm6.2bit:chrUn_DS485338v1:0-1163.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485338v1:0-1163.chain
zcat psl/dm6.2bit:chrUn_DS485341v1:0-1162.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485341v1:0-1162.chain
zcat psl/dm6.2bit:chrY_DS485343v1_random:0-1162.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485343v1_random:0-1162.chain
zcat psl/dm6.2bit:chrUn_DS483776v1:0-6000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483776v1:0-6000.chain
zcat psl/dm6.2bit:chrUn_DS485342v1:0-1162.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485342v1:0-1162.chain
zcat psl/dm6.2bit:chrUn_DS485349v1:0-1161.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485349v1:0-1161.chain
zcat psl/dm6.2bit:chrX_DS485351v1_random:0-1161.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485351v1_random:0-1161.chain
zcat psl/dm6.2bit:chrX_DS485345v1_random:0-1161.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485345v1_random:0-1161.chain
zcat psl/dm6.2bit:chrUn_DS485354v1:0-1160.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485354v1:0-1160.chain
zcat psl/dm6.2bit:chrUn_DS485353v1:0-1160.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485353v1:0-1160.chain
zcat psl/dm6.2bit:chrUn_DS485356v1:0-1160.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485356v1:0-1160.chain
zcat psl/dm6.2bit:chrX_DS485360v1_random:0-1159.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485360v1_random:0-1159.chain
zcat psl/dm6.2bit:chrUn_DS485361v1:0-1159.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485361v1:0-1159.chain
zcat psl/dm6.2bit:chrUn_DS485357v1:0-1159.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485357v1:0-1159.chain
zcat psl/dm6.2bit:chrY_DS483778v1_random:0-5984.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483778v1_random:0-5984.chain
zcat psl/dm6.2bit:chrX_DS485358v1_random:0-1159.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485358v1_random:0-1159.chain
zcat psl/dm6.2bit:chrY_DS485359v1_random:0-1159.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485359v1_random:0-1159.chain
zcat psl/dm6.2bit:chrY_DS485363v1_random:0-1158.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485363v1_random:0-1158.chain
zcat psl/dm6.2bit:chrUn_DS485362v1:0-1158.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485362v1:0-1158.chain
zcat psl/dm6.2bit:chrX_DS485364v1_random:0-1158.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485364v1_random:0-1158.chain
zcat psl/dm6.2bit:chrUn_DS485365v1:0-1157.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485365v1:0-1157.chain
zcat psl/dm6.2bit:chrUn_DS485368v1:0-1157.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485368v1:0-1157.chain
zcat psl/dm6.2bit:chrUn_DS485371v1:0-1156.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485371v1:0-1156.chain
zcat psl/dm6.2bit:chrUn_DS485370v1:0-1156.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485370v1:0-1156.chain
zcat psl/dm6.2bit:chrUn_DS485376v1:0-1155.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485376v1:0-1155.chain
zcat psl/dm6.2bit:chrUn_DS483780v1:0-5968.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483780v1:0-5968.chain
zcat psl/dm6.2bit:chrY_DS485375v1_random:0-1155.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485375v1_random:0-1155.chain
zcat psl/dm6.2bit:chrX_DS485378v1_random:0-1155.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485378v1_random:0-1155.chain
zcat psl/dm6.2bit:chrY_DS485374v1_random:0-1155.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485374v1_random:0-1155.chain
zcat psl/dm6.2bit:chrUn_DS485382v1:0-1154.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485382v1:0-1154.chain
zcat psl/dm6.2bit:chrUn_DS485379v1:0-1154.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485379v1:0-1154.chain
zcat psl/dm6.2bit:chrUn_DS485383v1:0-1154.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485383v1:0-1154.chain
zcat psl/dm6.2bit:chrUn_DS485381v1:0-1154.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485381v1:0-1154.chain
zcat psl/dm6.2bit:chrUn_DS485386v1:0-1153.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485386v1:0-1153.chain
zcat psl/dm6.2bit:chrX_DS485384v1_random:0-1153.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485384v1_random:0-1153.chain
zcat psl/dm6.2bit:chrUn_DS485385v1:0-1153.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485385v1:0-1153.chain
zcat psl/dm6.2bit:chrUn_DS483781v1:0-5952.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483781v1:0-5952.chain
zcat psl/dm6.2bit:chrUn_DS485389v1:0-1152.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485389v1:0-1152.chain
zcat psl/dm6.2bit:chrUn_DS485387v1:0-1152.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485387v1:0-1152.chain
zcat psl/dm6.2bit:chrUn_DS485390v1:0-1152.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485390v1:0-1152.chain
zcat psl/dm6.2bit:chrY_DS485388v1_random:0-1152.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485388v1_random:0-1152.chain
zcat psl/dm6.2bit:chrUn_DS485392v1:0-1151.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485392v1:0-1151.chain
zcat psl/dm6.2bit:chrUn_DS485393v1:0-1150.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485393v1:0-1150.chain
zcat psl/dm6.2bit:chrUn_DS485395v1:0-1150.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485395v1:0-1150.chain
zcat psl/dm6.2bit:chrY_DS485399v1_random:0-1148.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485399v1_random:0-1148.chain
zcat psl/dm6.2bit:chrUn_DS485397v1:0-1148.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485397v1:0-1148.chain
zcat psl/dm6.2bit:chrUn_DS485400v1:0-1148.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485400v1:0-1148.chain
zcat psl/dm6.2bit:chrUn_DS483782v1:0-5915.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483782v1:0-5915.chain
zcat psl/dm6.2bit:chrUn_DS485398v1:0-1148.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485398v1:0-1148.chain
zcat psl/dm6.2bit:chrUn_DS485403v1:0-1148.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485403v1:0-1148.chain
zcat psl/dm6.2bit:chrUn_DS485401v1:0-1148.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485401v1:0-1148.chain
zcat psl/dm6.2bit:chrY_DS485409v1_random:0-1147.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485409v1_random:0-1147.chain
zcat psl/dm6.2bit:chrUn_DS485407v1:0-1147.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485407v1:0-1147.chain
zcat psl/dm6.2bit:chrUn_DS485410v1:0-1147.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485410v1:0-1147.chain
zcat psl/dm6.2bit:chrUn_DS485415v1:0-1146.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485415v1:0-1146.chain
zcat psl/dm6.2bit:chrY_DS485416v1_random:0-1146.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485416v1_random:0-1146.chain
zcat psl/dm6.2bit:chrUn_DS485411v1:0-1146.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485411v1:0-1146.chain
zcat psl/dm6.2bit:chrX_DS485418v1_random:0-1145.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485418v1_random:0-1145.chain
zcat psl/dm6.2bit:chrUn_DS483783v1:0-5891.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483783v1:0-5891.chain
zcat psl/dm6.2bit:chrUn_DS485419v1:0-1144.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485419v1:0-1144.chain
zcat psl/dm6.2bit:chrUn_DS485421v1:0-1144.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485421v1:0-1144.chain
zcat psl/dm6.2bit:chrY_DS485422v1_random:0-1144.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485422v1_random:0-1144.chain
zcat psl/dm6.2bit:chrY_DS485423v1_random:0-1144.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485423v1_random:0-1144.chain
zcat psl/dm6.2bit:chrUn_DS485420v1:0-1144.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485420v1:0-1144.chain
zcat psl/dm6.2bit:chrUn_DS485424v1:0-1143.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485424v1:0-1143.chain
zcat psl/dm6.2bit:chrUn_DS485425v1:0-1143.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485425v1:0-1143.chain
zcat psl/dm6.2bit:chrY_DS485427v1_random:0-1142.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485427v1_random:0-1142.chain
zcat psl/dm6.2bit:chrUn_DS485428v1:0-1142.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485428v1:0-1142.chain
zcat psl/dm6.2bit:chrUn_DS485426v1:0-1142.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485426v1:0-1142.chain
zcat psl/dm6.2bit:chrX_DS483784v1_random:0-5832.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483784v1_random:0-5832.chain
zcat psl/dm6.2bit:chrY_DS485430v1_random:0-1141.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485430v1_random:0-1141.chain
zcat psl/dm6.2bit:chrUn_DS485429v1:0-1141.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485429v1:0-1141.chain
zcat psl/dm6.2bit:chrUn_DS485433v1:0-1140.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485433v1:0-1140.chain
zcat psl/dm6.2bit:chrUn_DS485434v1:0-1140.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485434v1:0-1140.chain
zcat psl/dm6.2bit:chrUn_DS485437v1:0-1140.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485437v1:0-1140.chain
zcat psl/dm6.2bit:chrY_DS485436v1_random:0-1140.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485436v1_random:0-1140.chain
zcat psl/dm6.2bit:chrUn_DS485439v1:0-1139.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485439v1:0-1139.chain
zcat psl/dm6.2bit:chrY_DS485440v1_random:0-1139.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485440v1_random:0-1139.chain
zcat psl/dm6.2bit:chrUn_DS485438v1:0-1139.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485438v1:0-1139.chain
zcat psl/dm6.2bit:chrUn_DS485441v1:0-1139.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485441v1:0-1139.chain
zcat psl/dm6.2bit:chrUn_DS483785v1:0-5772.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483785v1:0-5772.chain
zcat psl/dm6.2bit:chrUn_DS485442v1:0-1139.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485442v1:0-1139.chain
zcat psl/dm6.2bit:chrUn_DS485443v1:0-1138.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485443v1:0-1138.chain
zcat psl/dm6.2bit:chrUn_DS485448v1:0-1137.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485448v1:0-1137.chain
zcat psl/dm6.2bit:chrY_DS485450v1_random:0-1136.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485450v1_random:0-1136.chain
zcat psl/dm6.2bit:chrY_DS485452v1_random:0-1136.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485452v1_random:0-1136.chain
zcat psl/dm6.2bit:chrUn_DS485451v1:0-1136.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485451v1:0-1136.chain
zcat psl/dm6.2bit:chrUn_DS485453v1:0-1136.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485453v1:0-1136.chain
zcat psl/dm6.2bit:chrX_DS485454v1_random:0-1135.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485454v1_random:0-1135.chain
zcat psl/dm6.2bit:chrUn_DS485457v1:0-1135.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485457v1:0-1135.chain
zcat psl/dm6.2bit:chrUn_DS485456v1:0-1135.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485456v1:0-1135.chain
zcat psl/dm6.2bit:chrUn_DS483787v1:0-5698.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483787v1:0-5698.chain
zcat psl/dm6.2bit:chrX_DS485459v1_random:0-1134.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485459v1_random:0-1134.chain
zcat psl/dm6.2bit:chrUn_DS485462v1:0-1134.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485462v1:0-1134.chain
zcat psl/dm6.2bit:chrY_DS485460v1_random:0-1134.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485460v1_random:0-1134.chain
zcat psl/dm6.2bit:chrUn_DS485461v1:0-1134.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485461v1:0-1134.chain
zcat psl/dm6.2bit:chrUn_DS485464v1:0-1133.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485464v1:0-1133.chain
zcat psl/dm6.2bit:chrX_DS485465v1_random:0-1133.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485465v1_random:0-1133.chain
zcat psl/dm6.2bit:chrUn_DS485466v1:0-1133.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485466v1:0-1133.chain
zcat psl/dm6.2bit:chrUn_DS485469v1:0-1132.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485469v1:0-1132.chain
zcat psl/dm6.2bit:chrUn_DS485468v1:0-1132.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485468v1:0-1132.chain
zcat psl/dm6.2bit:chrY_DS485470v1_random:0-1132.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485470v1_random:0-1132.chain
zcat psl/dm6.2bit:chrY_DS483788v1_random:0-5564.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483788v1_random:0-5564.chain
zcat psl/dm6.2bit:chrUn_DS485467v1:0-1132.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485467v1:0-1132.chain
zcat psl/dm6.2bit:chrX_DS485471v1_random:0-1131.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485471v1_random:0-1131.chain
zcat psl/dm6.2bit:chrUn_DS485472v1:0-1131.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485472v1:0-1131.chain
zcat psl/dm6.2bit:chrY_DS485473v1_random:0-1131.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485473v1_random:0-1131.chain
zcat psl/dm6.2bit:chrUn_DS485477v1:0-1130.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485477v1:0-1130.chain
zcat psl/dm6.2bit:chrUn_DS485475v1:0-1130.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485475v1:0-1130.chain
zcat psl/dm6.2bit:chrX_DS485476v1_random:0-1130.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485476v1_random:0-1130.chain
zcat psl/dm6.2bit:chrX_DS485478v1_random:0-1129.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485478v1_random:0-1129.chain
zcat psl/dm6.2bit:chrUn_DS485482v1:0-1129.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485482v1:0-1129.chain
zcat psl/dm6.2bit:chrUn_DS485481v1:0-1129.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485481v1:0-1129.chain
zcat psl/dm6.2bit:chrX_DS483789v1_random:0-5555.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483789v1_random:0-5555.chain
zcat psl/dm6.2bit:chrY_DS485483v1_random:0-1129.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485483v1_random:0-1129.chain
zcat psl/dm6.2bit:chrUn_DS485490v1:0-1127.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485490v1:0-1127.chain
zcat psl/dm6.2bit:chrUn_DS485488v1:0-1127.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485488v1:0-1127.chain
zcat psl/dm6.2bit:chrUn_DS485495v1:0-1126.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485495v1:0-1126.chain
zcat psl/dm6.2bit:chrUn_DS485494v1:0-1126.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485494v1:0-1126.chain
zcat psl/dm6.2bit:chrY_DS485492v1_random:0-1126.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485492v1_random:0-1126.chain
zcat psl/dm6.2bit:chrUn_DS485491v1:0-1126.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485491v1:0-1126.chain
zcat psl/dm6.2bit:chrUn_DS485496v1:0-1126.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485496v1:0-1126.chain
zcat psl/dm6.2bit:chrUn_DS485497v1:0-1125.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485497v1:0-1125.chain
zcat psl/dm6.2bit:chrUn_DS485498v1:0-1125.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485498v1:0-1125.chain
zcat psl/dm6.2bit:chrY_DS483790v1_random:0-5520.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483790v1_random:0-5520.chain
zcat psl/dm6.2bit:chrUn_DS485500v1:0-1124.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485500v1:0-1124.chain
zcat psl/dm6.2bit:chrUn_DS485501v1:0-1124.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485501v1:0-1124.chain
zcat psl/dm6.2bit:chrUn_DS485503v1:0-1123.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485503v1:0-1123.chain
zcat psl/dm6.2bit:chrUn_DS485505v1:0-1123.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485505v1:0-1123.chain
zcat psl/dm6.2bit:chrUn_DS485504v1:0-1123.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485504v1:0-1123.chain
zcat psl/dm6.2bit:chrUn_DS485506v1:0-1123.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485506v1:0-1123.chain
zcat psl/dm6.2bit:chrUn_DS485509v1:0-1123.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485509v1:0-1123.chain
zcat psl/dm6.2bit:chrY_DS485512v1_random:0-1122.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485512v1_random:0-1122.chain
zcat psl/dm6.2bit:chrX_DS485514v1_random:0-1121.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485514v1_random:0-1121.chain
zcat psl/dm6.2bit:chrUn_DS485515v1:0-1120.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485515v1:0-1120.chain
zcat psl/dm6.2bit:chrUn_DS483792v1:0-5465.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483792v1:0-5465.chain
zcat psl/dm6.2bit:chrUn_DS485517v1:0-1119.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485517v1:0-1119.chain
zcat psl/dm6.2bit:chrUn_DS485518v1:0-1119.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485518v1:0-1119.chain
zcat psl/dm6.2bit:chrUn_DS485521v1:0-1118.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485521v1:0-1118.chain
zcat psl/dm6.2bit:chrUn_DS485520v1:0-1118.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485520v1:0-1118.chain
zcat psl/dm6.2bit:chrY_DS485523v1_random:0-1118.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485523v1_random:0-1118.chain
zcat psl/dm6.2bit:chrUn_DS485522v1:0-1118.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485522v1:0-1118.chain
zcat psl/dm6.2bit:chrUn_DS485525v1:0-1117.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485525v1:0-1117.chain
zcat psl/dm6.2bit:chrUn_DS485530v1:0-1117.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485530v1:0-1117.chain
zcat psl/dm6.2bit:chrUn_DS485528v1:0-1117.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485528v1:0-1117.chain
zcat psl/dm6.2bit:chrUn_DS485527v1:0-1117.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485527v1:0-1117.chain
zcat psl/dm6.2bit:chrUn_DS483793v1:0-5463.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483793v1:0-5463.chain
zcat psl/dm6.2bit:chrUn_DS485526v1:0-1117.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485526v1:0-1117.chain
zcat psl/dm6.2bit:chrUn_DS485529v1:0-1117.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485529v1:0-1117.chain
zcat psl/dm6.2bit:chrUn_DS485536v1:0-1116.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485536v1:0-1116.chain
zcat psl/dm6.2bit:chrUn_DS485533v1:0-1116.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485533v1:0-1116.chain
zcat psl/dm6.2bit:chrUn_DS485531v1:0-1116.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485531v1:0-1116.chain
zcat psl/dm6.2bit:chrY_DS485532v1_random:0-1116.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485532v1_random:0-1116.chain
zcat psl/dm6.2bit:chrY_DS485534v1_random:0-1116.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485534v1_random:0-1116.chain
zcat psl/dm6.2bit:chrUn_DS485535v1:0-1116.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485535v1:0-1116.chain
zcat psl/dm6.2bit:chrX_DS485537v1_random:0-1115.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485537v1_random:0-1115.chain
zcat psl/dm6.2bit:chrUn_DS485538v1:0-1115.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485538v1:0-1115.chain
zcat psl/dm6.2bit:chrX_DS483795v1_random:0-5387.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483795v1_random:0-5387.chain
zcat psl/dm6.2bit:chrUn_DS485539v1:0-1115.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485539v1:0-1115.chain
zcat psl/dm6.2bit:chrUn_DS485541v1:0-1114.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485541v1:0-1114.chain
zcat psl/dm6.2bit:chrUn_DS485545v1:0-1114.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485545v1:0-1114.chain
zcat psl/dm6.2bit:chrUn_DS485540v1:0-1114.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485540v1:0-1114.chain
zcat psl/dm6.2bit:chrUn_DS485542v1:0-1114.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485542v1:0-1114.chain
zcat psl/dm6.2bit:chrUn_DS485543v1:0-1114.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485543v1:0-1114.chain
zcat psl/dm6.2bit:chrUn_DS485544v1:0-1114.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485544v1:0-1114.chain
zcat psl/dm6.2bit:chrX_DS485549v1_random:0-1112.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485549v1_random:0-1112.chain
zcat psl/dm6.2bit:chrX_DS485550v1_random:0-1112.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485550v1_random:0-1112.chain
zcat psl/dm6.2bit:chrUn_DS485547v1:0-1112.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485547v1:0-1112.chain
zcat psl/dm6.2bit:chrUn_DS483796v1:0-5383.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483796v1:0-5383.chain
zcat psl/dm6.2bit:chrUn_DS485548v1:0-1112.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485548v1:0-1112.chain
zcat psl/dm6.2bit:chrY_DS485552v1_random:0-1111.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485552v1_random:0-1111.chain
zcat psl/dm6.2bit:chrUn_DS485557v1:0-1110.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485557v1:0-1110.chain
zcat psl/dm6.2bit:chrUn_DS485558v1:0-1110.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485558v1:0-1110.chain
zcat psl/dm6.2bit:chrUn_DS485559v1:0-1110.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485559v1:0-1110.chain
zcat psl/dm6.2bit:chrY_DS485560v1_random:0-1110.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485560v1_random:0-1110.chain
zcat psl/dm6.2bit:chrUn_DS485563v1:0-1109.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485563v1:0-1109.chain
zcat psl/dm6.2bit:chrX_DS485562v1_random:0-1109.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485562v1_random:0-1109.chain
zcat psl/dm6.2bit:chrY_DS485561v1_random:0-1109.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485561v1_random:0-1109.chain
zcat psl/dm6.2bit:chrUn_DS485565v1:0-1109.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485565v1:0-1109.chain
zcat psl/dm6.2bit:chrUn_DS483797v1:0-5360.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483797v1:0-5360.chain
zcat psl/dm6.2bit:chrUn_DS485569v1:0-1108.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485569v1:0-1108.chain
zcat psl/dm6.2bit:chrUn_DS485567v1:0-1108.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485567v1:0-1108.chain
zcat psl/dm6.2bit:chrUn_DS485571v1:0-1107.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485571v1:0-1107.chain
zcat psl/dm6.2bit:chrUn_DS485572v1:0-1107.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485572v1:0-1107.chain
zcat psl/dm6.2bit:chrX_DS485573v1_random:0-1107.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485573v1_random:0-1107.chain
zcat psl/dm6.2bit:chrY_DS485575v1_random:0-1106.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485575v1_random:0-1106.chain
zcat psl/dm6.2bit:chrUn_DS485574v1:0-1106.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485574v1:0-1106.chain
zcat psl/dm6.2bit:chrUn_DS485582v1:0-1105.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485582v1:0-1105.chain
zcat psl/dm6.2bit:chrUn_DS485583v1:0-1105.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485583v1:0-1105.chain
zcat psl/dm6.2bit:chrUn_DS485581v1:0-1105.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485581v1:0-1105.chain
zcat psl/dm6.2bit:chrUn_DS483798v1:0-5324.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483798v1:0-5324.chain
zcat psl/dm6.2bit:chrUn_DS485584v1:0-1105.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485584v1:0-1105.chain
zcat psl/dm6.2bit:chrUn_DS485578v1:0-1105.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485578v1:0-1105.chain
zcat psl/dm6.2bit:chrUn_DS485579v1:0-1105.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485579v1:0-1105.chain
zcat psl/dm6.2bit:chrUn_DS485587v1:0-1103.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485587v1:0-1103.chain
zcat psl/dm6.2bit:chrUn_DS485585v1:0-1103.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485585v1:0-1103.chain
zcat psl/dm6.2bit:chrUn_DS485588v1:0-1103.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485588v1:0-1103.chain
zcat psl/dm6.2bit:chrUn_DS485591v1:0-1102.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485591v1:0-1102.chain
zcat psl/dm6.2bit:chrUn_DS485589v1:0-1102.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485589v1:0-1102.chain
zcat psl/dm6.2bit:chrX_DS485592v1_random:0-1102.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485592v1_random:0-1102.chain
zcat psl/dm6.2bit:chrUn_DS485595v1:0-1101.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485595v1:0-1101.chain
zcat psl/dm6.2bit:chrUn_DS483799v1:0-5323.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483799v1:0-5323.chain
zcat psl/dm6.2bit:chrY_DS485594v1_random:0-1101.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485594v1_random:0-1101.chain
zcat psl/dm6.2bit:chrUn_DS485593v1:0-1101.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485593v1:0-1101.chain
zcat psl/dm6.2bit:chrX_DS485597v1_random:0-1100.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485597v1_random:0-1100.chain
zcat psl/dm6.2bit:chrX_DS485599v1_random:0-1100.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485599v1_random:0-1100.chain
zcat psl/dm6.2bit:chrUn_DS485601v1:0-1099.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485601v1:0-1099.chain
zcat psl/dm6.2bit:chrUn_DS485602v1:0-1099.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485602v1:0-1099.chain
zcat psl/dm6.2bit:chrX_DS485603v1_random:0-1098.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485603v1_random:0-1098.chain
zcat psl/dm6.2bit:chrUn_DS485605v1:0-1098.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485605v1:0-1098.chain
zcat psl/dm6.2bit:chrY_DS485604v1_random:0-1098.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485604v1_random:0-1098.chain
zcat psl/dm6.2bit:chrX_DS485606v1_random:0-1097.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485606v1_random:0-1097.chain
zcat psl/dm6.2bit:chrUn_DS483800v1:0-5316.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483800v1:0-5316.chain
zcat psl/dm6.2bit:chrUn_DS485608v1:0-1097.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485608v1:0-1097.chain
zcat psl/dm6.2bit:chrUn_DS485607v1:0-1097.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485607v1:0-1097.chain
zcat psl/dm6.2bit:chrUn_DS485609v1:0-1096.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485609v1:0-1096.chain
zcat psl/dm6.2bit:chrUn_DS485610v1:0-1096.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485610v1:0-1096.chain
zcat psl/dm6.2bit:chrUn_DS485614v1:0-1094.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485614v1:0-1094.chain
zcat psl/dm6.2bit:chrX_DS485617v1_random:0-1093.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485617v1_random:0-1093.chain
zcat psl/dm6.2bit:chrX_DS485618v1_random:0-1092.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485618v1_random:0-1092.chain
zcat psl/dm6.2bit:chrUn_DS485621v1:0-1091.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485621v1:0-1091.chain
zcat psl/dm6.2bit:chrX_DS485620v1_random:0-1091.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485620v1_random:0-1091.chain
zcat psl/dm6.2bit:chrUn_DS485623v1:0-1090.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485623v1:0-1090.chain
zcat psl/dm6.2bit:chrUn_DS483801v1:0-5281.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483801v1:0-5281.chain
zcat psl/dm6.2bit:chrUn_DS485622v1:0-1090.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485622v1:0-1090.chain
zcat psl/dm6.2bit:chrUn_DS485624v1:0-1090.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485624v1:0-1090.chain
zcat psl/dm6.2bit:chrUn_DS485627v1:0-1090.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485627v1:0-1090.chain
zcat psl/dm6.2bit:chrY_DS485625v1_random:0-1090.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485625v1_random:0-1090.chain
zcat psl/dm6.2bit:chrUn_DS485630v1:0-1089.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485630v1:0-1089.chain
zcat psl/dm6.2bit:chrUn_DS485628v1:0-1089.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485628v1:0-1089.chain
zcat psl/dm6.2bit:chrUn_DS485632v1:0-1088.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485632v1:0-1088.chain
zcat psl/dm6.2bit:chrUn_DS485634v1:0-1088.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485634v1:0-1088.chain
zcat psl/dm6.2bit:chrX_DS485635v1_random:0-1088.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485635v1_random:0-1088.chain
zcat psl/dm6.2bit:chrUn_DS485636v1:0-1088.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485636v1:0-1088.chain
zcat psl/dm6.2bit:chrX_DS483803v1_random:0-5232.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483803v1_random:0-5232.chain
zcat psl/dm6.2bit:chrUn_DS485640v1:0-1087.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485640v1:0-1087.chain
zcat psl/dm6.2bit:chrY_DS485641v1_random:0-1087.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485641v1_random:0-1087.chain
zcat psl/dm6.2bit:chrUn_DS485642v1:0-1087.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485642v1:0-1087.chain
zcat psl/dm6.2bit:chrX_DS485647v1_random:0-1086.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485647v1_random:0-1086.chain
zcat psl/dm6.2bit:chrUn_DS485643v1:0-1086.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485643v1:0-1086.chain
zcat psl/dm6.2bit:chrUn_DS485648v1:0-1086.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485648v1:0-1086.chain
zcat psl/dm6.2bit:chrY_DS485646v1_random:0-1086.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485646v1_random:0-1086.chain
zcat psl/dm6.2bit:chrUn_DS485654v1:0-1084.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485654v1:0-1084.chain
zcat psl/dm6.2bit:chrUn_DS485653v1:0-1084.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485653v1:0-1084.chain
zcat psl/dm6.2bit:chrX_DS485651v1_random:0-1084.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485651v1_random:0-1084.chain
zcat psl/dm6.2bit:chrUn_DS483804v1:0-5189.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483804v1:0-5189.chain
zcat psl/dm6.2bit:chrUn_DS485650v1:0-1084.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485650v1:0-1084.chain
zcat psl/dm6.2bit:chrX_DS485649v1_random:0-1084.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485649v1_random:0-1084.chain
zcat psl/dm6.2bit:chrUn_DS485656v1:0-1083.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485656v1:0-1083.chain
zcat psl/dm6.2bit:chrUn_DS485657v1:0-1083.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485657v1:0-1083.chain
zcat psl/dm6.2bit:chrUn_DS485655v1:0-1083.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485655v1:0-1083.chain
zcat psl/dm6.2bit:chrX_DS485660v1_random:0-1082.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485660v1_random:0-1082.chain
zcat psl/dm6.2bit:chrUn_DS485659v1:0-1082.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485659v1:0-1082.chain
zcat psl/dm6.2bit:chrUn_DS485661v1:0-1081.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485661v1:0-1081.chain
zcat psl/dm6.2bit:chrUn_DS485664v1:0-1081.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485664v1:0-1081.chain
zcat psl/dm6.2bit:chrUn_DS485666v1:0-1080.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485666v1:0-1080.chain
zcat psl/dm6.2bit:chrUn_DS483805v1:0-5182.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483805v1:0-5182.chain
zcat psl/dm6.2bit:chrUn_DS485667v1:0-1080.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485667v1:0-1080.chain
zcat psl/dm6.2bit:chrUn_DS485668v1:0-1080.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485668v1:0-1080.chain
zcat psl/dm6.2bit:chrUn_DS485670v1:0-1079.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485670v1:0-1079.chain
zcat psl/dm6.2bit:chrUn_DS485671v1:0-1079.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485671v1:0-1079.chain
zcat psl/dm6.2bit:chrX_DS485672v1_random:0-1078.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485672v1_random:0-1078.chain
zcat psl/dm6.2bit:chrUn_DS485673v1:0-1078.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485673v1:0-1078.chain
zcat psl/dm6.2bit:chrX_DS485676v1_random:0-1078.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485676v1_random:0-1078.chain
zcat psl/dm6.2bit:chrUn_DS485675v1:0-1078.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485675v1:0-1078.chain
zcat psl/dm6.2bit:chrUn_DS485679v1:0-1077.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485679v1:0-1077.chain
zcat psl/dm6.2bit:chrUn_DS485678v1:0-1077.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485678v1:0-1077.chain
zcat psl/dm6.2bit:chrUn_DS483806v1:0-5098.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483806v1:0-5098.chain
zcat psl/dm6.2bit:chrUn_DS485683v1:0-1076.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485683v1:0-1076.chain
zcat psl/dm6.2bit:chrUn_DS485681v1:0-1076.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485681v1:0-1076.chain
zcat psl/dm6.2bit:chrUn_DS485684v1:0-1076.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485684v1:0-1076.chain
zcat psl/dm6.2bit:chrUn_DS485682v1:0-1076.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485682v1:0-1076.chain
zcat psl/dm6.2bit:chrX_DS485687v1_random:0-1075.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485687v1_random:0-1075.chain
zcat psl/dm6.2bit:chrUn_DS485686v1:0-1075.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485686v1:0-1075.chain
zcat psl/dm6.2bit:chrUn_DS485688v1:0-1075.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485688v1:0-1075.chain
zcat psl/dm6.2bit:chrY_DS485685v1_random:0-1075.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485685v1_random:0-1075.chain
zcat psl/dm6.2bit:chrUn_DS485694v1:0-1074.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485694v1:0-1074.chain
zcat psl/dm6.2bit:chrX_DS485691v1_random:0-1074.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485691v1_random:0-1074.chain
zcat psl/dm6.2bit:chrUn_DS483807v1:0-5061.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483807v1:0-5061.chain
zcat psl/dm6.2bit:chrUn_DS485693v1:0-1074.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485693v1:0-1074.chain
zcat psl/dm6.2bit:chrUn_DS485692v1:0-1074.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485692v1:0-1074.chain
zcat psl/dm6.2bit:chrY_DS485696v1_random:0-1073.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485696v1_random:0-1073.chain
zcat psl/dm6.2bit:chrUn_DS485701v1:0-1072.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485701v1:0-1072.chain
zcat psl/dm6.2bit:chrY_DS485698v1_random:0-1072.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485698v1_random:0-1072.chain
zcat psl/dm6.2bit:chrX_DS485707v1_random:0-1071.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485707v1_random:0-1071.chain
zcat psl/dm6.2bit:chrUn_DS485703v1:0-1071.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485703v1:0-1071.chain
zcat psl/dm6.2bit:chrUn_DS485711v1:0-1070.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485711v1:0-1070.chain
zcat psl/dm6.2bit:chrUn_DS485709v1:0-1070.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485709v1:0-1070.chain
zcat psl/dm6.2bit:chrUn_DS485712v1:0-1070.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485712v1:0-1070.chain
zcat psl/dm6.2bit:chrUn_DS483808v1:0-5060.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483808v1:0-5060.chain
zcat psl/dm6.2bit:chrUn_DS485717v1:0-1069.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485717v1:0-1069.chain
zcat psl/dm6.2bit:chrUn_DS485714v1:0-1069.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485714v1:0-1069.chain
zcat psl/dm6.2bit:chrY_DS485718v1_random:0-1068.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485718v1_random:0-1068.chain
zcat psl/dm6.2bit:chrUn_DS485722v1:0-1067.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485722v1:0-1067.chain
zcat psl/dm6.2bit:chrUn_DS485724v1:0-1067.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485724v1:0-1067.chain
zcat psl/dm6.2bit:chrX_DS485723v1_random:0-1067.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485723v1_random:0-1067.chain
zcat psl/dm6.2bit:chrUn_DS485725v1:0-1066.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485725v1:0-1066.chain
zcat psl/dm6.2bit:chrUn_DS485728v1:0-1064.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485728v1:0-1064.chain
zcat psl/dm6.2bit:chrY_DS485732v1_random:0-1064.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485732v1_random:0-1064.chain
zcat psl/dm6.2bit:chrUn_DS485729v1:0-1064.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485729v1:0-1064.chain
zcat psl/dm6.2bit:chrX_DS483809v1_random:0-5057.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483809v1_random:0-5057.chain
zcat psl/dm6.2bit:chrUn_DS485737v1:0-1063.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485737v1:0-1063.chain
zcat psl/dm6.2bit:chrUn_DS485741v1:0-1063.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485741v1:0-1063.chain
zcat psl/dm6.2bit:chrY_DS485736v1_random:0-1063.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485736v1_random:0-1063.chain
zcat psl/dm6.2bit:chrX_DS485735v1_random:0-1063.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485735v1_random:0-1063.chain
zcat psl/dm6.2bit:chrUn_DS485740v1:0-1063.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485740v1:0-1063.chain
zcat psl/dm6.2bit:chrY_DS485739v1_random:0-1063.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485739v1_random:0-1063.chain
zcat psl/dm6.2bit:chrX_DS485738v1_random:0-1063.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485738v1_random:0-1063.chain
zcat psl/dm6.2bit:chrUn_DS485733v1:0-1063.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485733v1:0-1063.chain
zcat psl/dm6.2bit:chrUn_DS485743v1:0-1062.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485743v1:0-1062.chain
zcat psl/dm6.2bit:chrUn_DS485742v1:0-1062.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485742v1:0-1062.chain
zcat psl/dm6.2bit:chrUn_DS483810v1:0-5026.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483810v1:0-5026.chain
zcat psl/dm6.2bit:chrX_DS485745v1_random:0-1062.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485745v1_random:0-1062.chain
zcat psl/dm6.2bit:chrUn_DS485747v1:0-1062.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485747v1:0-1062.chain
zcat psl/dm6.2bit:chrUn_DS485746v1:0-1062.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485746v1:0-1062.chain
zcat psl/dm6.2bit:chrUn_DS485748v1:0-1061.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485748v1:0-1061.chain
zcat psl/dm6.2bit:chrUn_DS485751v1:0-1060.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485751v1:0-1060.chain
zcat psl/dm6.2bit:chrUn_DS485750v1:0-1060.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485750v1:0-1060.chain
zcat psl/dm6.2bit:chrY_DS485749v1_random:0-1060.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485749v1_random:0-1060.chain
zcat psl/dm6.2bit:chrUn_DS485754v1:0-1059.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485754v1:0-1059.chain
zcat psl/dm6.2bit:chrUn_DS485753v1:0-1059.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485753v1:0-1059.chain
zcat psl/dm6.2bit:chrY_DS485752v1_random:0-1059.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485752v1_random:0-1059.chain
zcat psl/dm6.2bit:chrUn_DS483811v1:0-5000.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483811v1:0-5000.chain
zcat psl/dm6.2bit:chrUn_DS485757v1:0-1058.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485757v1:0-1058.chain
zcat psl/dm6.2bit:chrX_DS485756v1_random:0-1058.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485756v1_random:0-1058.chain
zcat psl/dm6.2bit:chrUn_DS485760v1:0-1058.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485760v1:0-1058.chain
zcat psl/dm6.2bit:chrY_DS485755v1_random:0-1058.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485755v1_random:0-1058.chain
zcat psl/dm6.2bit:chrX_DS485762v1_random:0-1057.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485762v1_random:0-1057.chain
zcat psl/dm6.2bit:chrX_DS485765v1_random:0-1056.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485765v1_random:0-1056.chain
zcat psl/dm6.2bit:chrY_DS485767v1_random:0-1056.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485767v1_random:0-1056.chain
zcat psl/dm6.2bit:chrY_DS485764v1_random:0-1056.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485764v1_random:0-1056.chain
zcat psl/dm6.2bit:chrUn_DS485766v1:0-1056.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485766v1:0-1056.chain
zcat psl/dm6.2bit:chrX_DS485771v1_random:0-1055.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485771v1_random:0-1055.chain
zcat psl/dm6.2bit:chrUn_DS483812v1:0-4996.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483812v1:0-4996.chain
zcat psl/dm6.2bit:chrUn_DS485770v1:0-1055.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485770v1:0-1055.chain
zcat psl/dm6.2bit:chrX_DS485769v1_random:0-1055.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485769v1_random:0-1055.chain
zcat psl/dm6.2bit:chrY_DS485772v1_random:0-1054.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485772v1_random:0-1054.chain
zcat psl/dm6.2bit:chrUn_DS485773v1:0-1054.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485773v1:0-1054.chain
zcat psl/dm6.2bit:chrX_DS485778v1_random:0-1053.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485778v1_random:0-1053.chain
zcat psl/dm6.2bit:chrUn_DS485774v1:0-1053.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485774v1:0-1053.chain
zcat psl/dm6.2bit:chrY_DS485776v1_random:0-1053.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485776v1_random:0-1053.chain
zcat psl/dm6.2bit:chrUn_DS485775v1:0-1053.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485775v1:0-1053.chain
zcat psl/dm6.2bit:chrUn_DS485780v1:0-1053.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485780v1:0-1053.chain
zcat psl/dm6.2bit:chrUn_DS485781v1:0-1052.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485781v1:0-1052.chain
zcat psl/dm6.2bit:chrUn_DS483813v1:0-4994.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483813v1:0-4994.chain
zcat psl/dm6.2bit:chrUn_DS485783v1:0-1052.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485783v1:0-1052.chain
zcat psl/dm6.2bit:chrX_DS485782v1_random:0-1052.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485782v1_random:0-1052.chain
zcat psl/dm6.2bit:chrUn_DS485788v1:0-1051.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485788v1:0-1051.chain
zcat psl/dm6.2bit:chrX_DS485790v1_random:0-1051.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485790v1_random:0-1051.chain
zcat psl/dm6.2bit:chrX_DS485785v1_random:0-1051.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485785v1_random:0-1051.chain
zcat psl/dm6.2bit:chrY_DS485786v1_random:0-1051.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485786v1_random:0-1051.chain
zcat psl/dm6.2bit:chrUn_DS485789v1:0-1051.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485789v1:0-1051.chain
zcat psl/dm6.2bit:chrUn_DS485792v1:0-1050.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485792v1:0-1050.chain
zcat psl/dm6.2bit:chrUn_DS485793v1:0-1050.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485793v1:0-1050.chain
zcat psl/dm6.2bit:chrUn_DS485794v1:0-1049.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485794v1:0-1049.chain
zcat psl/dm6.2bit:chrUn_DS483814v1:0-4986.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483814v1:0-4986.chain
zcat psl/dm6.2bit:chrX_DS485797v1_random:0-1049.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485797v1_random:0-1049.chain
zcat psl/dm6.2bit:chrUn_DS485796v1:0-1049.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485796v1:0-1049.chain
zcat psl/dm6.2bit:chrX_DS485798v1_random:0-1049.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485798v1_random:0-1049.chain
zcat psl/dm6.2bit:chrY_DS485795v1_random:0-1049.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485795v1_random:0-1049.chain
zcat psl/dm6.2bit:chrUn_DS485806v1:0-1048.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485806v1:0-1048.chain
zcat psl/dm6.2bit:chrUn_DS485803v1:0-1048.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485803v1:0-1048.chain
zcat psl/dm6.2bit:chrUn_DS485802v1:0-1048.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485802v1:0-1048.chain
zcat psl/dm6.2bit:chrUn_DS485807v1:0-1048.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485807v1:0-1048.chain
zcat psl/dm6.2bit:chrX_DS485801v1_random:0-1048.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485801v1_random:0-1048.chain
zcat psl/dm6.2bit:chrUn_DS485812v1:0-1047.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485812v1:0-1047.chain
zcat psl/dm6.2bit:chrUn_DS483815v1:0-4967.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483815v1:0-4967.chain
zcat psl/dm6.2bit:chrX_DS485813v1_random:0-1047.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485813v1_random:0-1047.chain
zcat psl/dm6.2bit:chrUn_DS485808v1:0-1047.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485808v1:0-1047.chain
zcat psl/dm6.2bit:chrUn_DS485810v1:0-1047.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485810v1:0-1047.chain
zcat psl/dm6.2bit:chrX_DS485816v1_random:0-1046.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485816v1_random:0-1046.chain
zcat psl/dm6.2bit:chrUn_DS485818v1:0-1045.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485818v1:0-1045.chain
zcat psl/dm6.2bit:chrUn_DS485821v1:0-1045.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485821v1:0-1045.chain
zcat psl/dm6.2bit:chrUn_DS485822v1:0-1045.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485822v1:0-1045.chain
zcat psl/dm6.2bit:chrUn_DS485820v1:0-1045.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485820v1:0-1045.chain
zcat psl/dm6.2bit:chrUn_DS485823v1:0-1044.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485823v1:0-1044.chain
zcat psl/dm6.2bit:chrUn_DS485826v1:0-1044.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485826v1:0-1044.chain
zcat psl/dm6.2bit:chrUn_DS483816v1:0-4939.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483816v1:0-4939.chain
zcat psl/dm6.2bit:chrUn_DS485825v1:0-1044.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485825v1:0-1044.chain
zcat psl/dm6.2bit:chrUn_DS485828v1:0-1043.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485828v1:0-1043.chain
zcat psl/dm6.2bit:chrUn_DS485827v1:0-1043.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485827v1:0-1043.chain
zcat psl/dm6.2bit:chrUn_DS485838v1:0-1042.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485838v1:0-1042.chain
zcat psl/dm6.2bit:chrX_DS485836v1_random:0-1042.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485836v1_random:0-1042.chain
zcat psl/dm6.2bit:chrUn_DS485832v1:0-1042.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485832v1:0-1042.chain
zcat psl/dm6.2bit:chrUn_DS485833v1:0-1042.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485833v1:0-1042.chain
zcat psl/dm6.2bit:chrY_DS485839v1_random:0-1042.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485839v1_random:0-1042.chain
zcat psl/dm6.2bit:chrUn_DS485842v1:0-1041.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485842v1:0-1041.chain
zcat psl/dm6.2bit:chrY_DS485840v1_random:0-1041.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485840v1_random:0-1041.chain
zcat psl/dm6.2bit:chrUn_DS483817v1:0-4933.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483817v1:0-4933.chain
zcat psl/dm6.2bit:chrUn_DS485841v1:0-1041.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485841v1:0-1041.chain
zcat psl/dm6.2bit:chrUn_DS485848v1:0-1040.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485848v1:0-1040.chain
zcat psl/dm6.2bit:chrUn_DS485847v1:0-1040.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485847v1:0-1040.chain
zcat psl/dm6.2bit:chrUn_DS485846v1:0-1040.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485846v1:0-1040.chain
zcat psl/dm6.2bit:chrX_DS485845v1_random:0-1040.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485845v1_random:0-1040.chain
zcat psl/dm6.2bit:chrUn_DS485851v1:0-1039.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485851v1:0-1039.chain
zcat psl/dm6.2bit:chrY_DS485849v1_random:0-1039.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485849v1_random:0-1039.chain
zcat psl/dm6.2bit:chrUn_DS485850v1:0-1039.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485850v1:0-1039.chain
zcat psl/dm6.2bit:chrUn_DS485853v1:0-1038.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485853v1:0-1038.chain
zcat psl/dm6.2bit:chrUn_DS485854v1:0-1038.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485854v1:0-1038.chain
zcat psl/dm6.2bit:chrX_DS483818v1_random:0-4917.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483818v1_random:0-4917.chain
zcat psl/dm6.2bit:chrX_DS485852v1_random:0-1038.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485852v1_random:0-1038.chain
zcat psl/dm6.2bit:chrX_DS485855v1_random:0-1037.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485855v1_random:0-1037.chain
zcat psl/dm6.2bit:chrX_DS485856v1_random:0-1037.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485856v1_random:0-1037.chain
zcat psl/dm6.2bit:chrX_DS485857v1_random:0-1037.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485857v1_random:0-1037.chain
zcat psl/dm6.2bit:chrY_DS485858v1_random:0-1037.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485858v1_random:0-1037.chain
zcat psl/dm6.2bit:chrUn_DS485859v1:0-1036.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485859v1:0-1036.chain
zcat psl/dm6.2bit:chrX_DS485860v1_random:0-1036.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485860v1_random:0-1036.chain
zcat psl/dm6.2bit:chrUn_DS485864v1:0-1035.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485864v1:0-1035.chain
zcat psl/dm6.2bit:chrUn_DS485868v1:0-1035.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485868v1:0-1035.chain
zcat psl/dm6.2bit:chrUn_DS485867v1:0-1035.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485867v1:0-1035.chain
zcat psl/dm6.2bit:chrUn_DS483819v1:0-4903.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483819v1:0-4903.chain
zcat psl/dm6.2bit:chrUn_DS485863v1:0-1035.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485863v1:0-1035.chain
zcat psl/dm6.2bit:chrY_DS485865v1_random:0-1035.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485865v1_random:0-1035.chain
zcat psl/dm6.2bit:chrY_DS485873v1_random:0-1033.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485873v1_random:0-1033.chain
zcat psl/dm6.2bit:chrUn_DS485874v1:0-1033.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485874v1:0-1033.chain
zcat psl/dm6.2bit:chrUn_DS485872v1:0-1033.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485872v1:0-1033.chain
zcat psl/dm6.2bit:chrUn_DS485870v1:0-1033.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485870v1:0-1033.chain
zcat psl/dm6.2bit:chrUn_DS485876v1:0-1032.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485876v1:0-1032.chain
zcat psl/dm6.2bit:chrY_DS485875v1_random:0-1032.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485875v1_random:0-1032.chain
zcat psl/dm6.2bit:chrUn_DS485878v1:0-1032.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485878v1:0-1032.chain
zcat psl/dm6.2bit:chrUn_DS485880v1:0-1031.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485880v1:0-1031.chain
zcat psl/dm6.2bit:chrUn_DS483820v1:0-4888.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483820v1:0-4888.chain
zcat psl/dm6.2bit:chrX_DS485879v1_random:0-1031.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485879v1_random:0-1031.chain
zcat psl/dm6.2bit:chrUn_DS485882v1:0-1031.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485882v1:0-1031.chain
zcat psl/dm6.2bit:chrUn_DS485886v1:0-1030.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485886v1:0-1030.chain
zcat psl/dm6.2bit:chrY_DS485885v1_random:0-1030.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485885v1_random:0-1030.chain
zcat psl/dm6.2bit:chrUn_DS485883v1:0-1030.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485883v1:0-1030.chain
zcat psl/dm6.2bit:chrY_DS485894v1_random:0-1029.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485894v1_random:0-1029.chain
zcat psl/dm6.2bit:chrY_DS485888v1_random:0-1029.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485888v1_random:0-1029.chain
zcat psl/dm6.2bit:chrUn_DS485889v1:0-1029.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485889v1:0-1029.chain
zcat psl/dm6.2bit:chrUn_DS485887v1:0-1029.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485887v1:0-1029.chain
zcat psl/dm6.2bit:chrUn_DS485891v1:0-1029.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485891v1:0-1029.chain
zcat psl/dm6.2bit:chrX_DS483821v1_random:0-4879.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483821v1_random:0-4879.chain
zcat psl/dm6.2bit:chrY_DS485892v1_random:0-1029.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485892v1_random:0-1029.chain
zcat psl/dm6.2bit:chrUn_DS485893v1:0-1029.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485893v1:0-1029.chain
zcat psl/dm6.2bit:chrUn_DS485897v1:0-1028.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485897v1:0-1028.chain
zcat psl/dm6.2bit:chrX_DS485898v1_random:0-1028.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485898v1_random:0-1028.chain
zcat psl/dm6.2bit:chrUn_DS485900v1:0-1027.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485900v1:0-1027.chain
zcat psl/dm6.2bit:chrY_DS485901v1_random:0-1027.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485901v1_random:0-1027.chain
zcat psl/dm6.2bit:chrX_DS485899v1_random:0-1027.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485899v1_random:0-1027.chain
zcat psl/dm6.2bit:chrUn_DS485903v1:0-1026.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485903v1:0-1026.chain
zcat psl/dm6.2bit:chrUn_DS485902v1:0-1026.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485902v1:0-1026.chain
zcat psl/dm6.2bit:chrUn_DS485905v1:0-1025.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485905v1:0-1025.chain
zcat psl/dm6.2bit:chrUn_DS483822v1:0-4865.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483822v1:0-4865.chain
zcat psl/dm6.2bit:chrUn_DS485906v1:0-1025.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485906v1:0-1025.chain
zcat psl/dm6.2bit:chrUn_DS485907v1:0-1025.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485907v1:0-1025.chain
zcat psl/dm6.2bit:chrUn_DS485904v1:0-1025.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485904v1:0-1025.chain
zcat psl/dm6.2bit:chrX_DS485909v1_random:0-1023.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485909v1_random:0-1023.chain
zcat psl/dm6.2bit:chrUn_DS485911v1:0-1023.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485911v1:0-1023.chain
zcat psl/dm6.2bit:chrUn_DS485917v1:0-1022.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485917v1:0-1022.chain
zcat psl/dm6.2bit:chrUn_DS485915v1:0-1022.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485915v1:0-1022.chain
zcat psl/dm6.2bit:chrUn_DS485912v1:0-1022.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485912v1:0-1022.chain
zcat psl/dm6.2bit:chrX_DS485913v1_random:0-1022.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485913v1_random:0-1022.chain
zcat psl/dm6.2bit:chrUn_DS485918v1:0-1021.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485918v1:0-1021.chain
zcat psl/dm6.2bit:chrUn_DS483824v1:0-4820.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483824v1:0-4820.chain
zcat psl/dm6.2bit:chrUn_DS485923v1:0-1021.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485923v1:0-1021.chain
zcat psl/dm6.2bit:chrUn_DS485919v1:0-1021.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485919v1:0-1021.chain
zcat psl/dm6.2bit:chrY_DS485927v1_random:0-1020.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485927v1_random:0-1020.chain
zcat psl/dm6.2bit:chrUn_DS485925v1:0-1020.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485925v1:0-1020.chain
zcat psl/dm6.2bit:chrUn_DS485929v1:0-1020.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485929v1:0-1020.chain
zcat psl/dm6.2bit:chrUn_DS485935v1:0-1019.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485935v1:0-1019.chain
zcat psl/dm6.2bit:chrY_DS485938v1_random:0-1019.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485938v1_random:0-1019.chain
zcat psl/dm6.2bit:chrX_DS485934v1_random:0-1019.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485934v1_random:0-1019.chain
zcat psl/dm6.2bit:chrUn_DS485933v1:0-1019.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485933v1:0-1019.chain
zcat psl/dm6.2bit:chrUn_DS485932v1:0-1019.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485932v1:0-1019.chain
zcat psl/dm6.2bit:chrUn_DS483825v1:0-4815.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483825v1:0-4815.chain
zcat psl/dm6.2bit:chrX_DS485941v1_random:0-1018.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485941v1_random:0-1018.chain
zcat psl/dm6.2bit:chrUn_DS485939v1:0-1018.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485939v1:0-1018.chain
zcat psl/dm6.2bit:chrUn_DS485940v1:0-1018.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485940v1:0-1018.chain
zcat psl/dm6.2bit:chrX_DS485942v1_random:0-1018.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485942v1_random:0-1018.chain
zcat psl/dm6.2bit:chrUn_DS485944v1:0-1016.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485944v1:0-1016.chain
zcat psl/dm6.2bit:chrUn_DS485947v1:0-1016.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485947v1:0-1016.chain
zcat psl/dm6.2bit:chrUn_DS485946v1:0-1016.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485946v1:0-1016.chain
zcat psl/dm6.2bit:chrX_DS485950v1_random:0-1015.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485950v1_random:0-1015.chain
zcat psl/dm6.2bit:chrUn_DS485948v1:0-1015.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485948v1:0-1015.chain
zcat psl/dm6.2bit:chrUn_DS485955v1:0-1014.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485955v1:0-1014.chain
zcat psl/dm6.2bit:chrUn_DS483828v1:0-4785.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483828v1:0-4785.chain
zcat psl/dm6.2bit:chrUn_DS485952v1:0-1014.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485952v1:0-1014.chain
zcat psl/dm6.2bit:chrY_DS485956v1_random:0-1014.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485956v1_random:0-1014.chain
zcat psl/dm6.2bit:chrUn_DS485954v1:0-1014.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485954v1:0-1014.chain
zcat psl/dm6.2bit:chrUn_DS485953v1:0-1014.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485953v1:0-1014.chain
zcat psl/dm6.2bit:chrUn_DS485957v1:0-1013.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485957v1:0-1013.chain
zcat psl/dm6.2bit:chrX_DS485959v1_random:0-1013.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485959v1_random:0-1013.chain
zcat psl/dm6.2bit:chrUn_DS485958v1:0-1013.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485958v1:0-1013.chain
zcat psl/dm6.2bit:chrX_DS485962v1_random:0-1012.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485962v1_random:0-1012.chain
zcat psl/dm6.2bit:chrUn_DS485965v1:0-1012.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485965v1:0-1012.chain
zcat psl/dm6.2bit:chrY_DS485963v1_random:0-1012.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485963v1_random:0-1012.chain
zcat psl/dm6.2bit:chrUn_DS483832v1:0-4705.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483832v1:0-4705.chain
zcat psl/dm6.2bit:chrY_DS485960v1_random:0-1012.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485960v1_random:0-1012.chain
zcat psl/dm6.2bit:chrUn_DS485964v1:0-1012.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485964v1:0-1012.chain
zcat psl/dm6.2bit:chrX_DS485967v1_random:0-1011.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485967v1_random:0-1011.chain
zcat psl/dm6.2bit:chrUn_DS485968v1:0-1011.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485968v1:0-1011.chain
zcat psl/dm6.2bit:chrUn_DS485969v1:0-1011.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485969v1:0-1011.chain
zcat psl/dm6.2bit:chrUn_DS485966v1:0-1011.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485966v1:0-1011.chain
zcat psl/dm6.2bit:chrUn_DS485973v1:0-1010.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485973v1:0-1010.chain
zcat psl/dm6.2bit:chrY_DS485975v1_random:0-1010.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485975v1_random:0-1010.chain
zcat psl/dm6.2bit:chrY_DS485972v1_random:0-1010.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485972v1_random:0-1010.chain
zcat psl/dm6.2bit:chrY_DS485974v1_random:0-1010.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS485974v1_random:0-1010.chain
zcat psl/dm6.2bit:chrUn_DS483833v1:0-4701.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483833v1:0-4701.chain
zcat psl/dm6.2bit:chrUn_DS485980v1:0-1008.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485980v1:0-1008.chain
zcat psl/dm6.2bit:chrUn_DS485979v1:0-1008.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485979v1:0-1008.chain
zcat psl/dm6.2bit:chrX_DS485978v1_random:0-1008.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485978v1_random:0-1008.chain
zcat psl/dm6.2bit:chrX_DS485981v1_random:0-1007.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485981v1_random:0-1007.chain
zcat psl/dm6.2bit:chrUn_DS485982v1:0-1007.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485982v1:0-1007.chain
zcat psl/dm6.2bit:chrUn_DS485983v1:0-1006.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485983v1:0-1006.chain
zcat psl/dm6.2bit:chrUn_DS485984v1:0-1006.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485984v1:0-1006.chain
zcat psl/dm6.2bit:chrUn_DS485985v1:0-1006.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485985v1:0-1006.chain
zcat psl/dm6.2bit:chrUn_DS485986v1:0-1005.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485986v1:0-1005.chain
zcat psl/dm6.2bit:chrUn_DS485988v1:0-1005.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485988v1:0-1005.chain
zcat psl/dm6.2bit:chrUn_DS483837v1:0-4608.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483837v1:0-4608.chain
zcat psl/dm6.2bit:chrX_DS485987v1_random:0-1005.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485987v1_random:0-1005.chain
zcat psl/dm6.2bit:chrUn_DS485991v1:0-1005.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485991v1:0-1005.chain
zcat psl/dm6.2bit:chrUn_DS485989v1:0-1005.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485989v1:0-1005.chain
zcat psl/dm6.2bit:chrX_DS485994v1_random:0-1004.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS485994v1_random:0-1004.chain
zcat psl/dm6.2bit:chrUn_DS485995v1:0-1004.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485995v1:0-1004.chain
zcat psl/dm6.2bit:chrUn_DS485996v1:0-1004.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485996v1:0-1004.chain
zcat psl/dm6.2bit:chrUn_DS485997v1:0-1004.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485997v1:0-1004.chain
zcat psl/dm6.2bit:chrUn_DS485998v1:0-1003.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485998v1:0-1003.chain
zcat psl/dm6.2bit:chrY_DS486003v1_random:0-1001.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS486003v1_random:0-1001.chain
zcat psl/dm6.2bit:chrUn_DS486005v1:0-1001.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS486005v1:0-1001.chain
zcat psl/dm6.2bit:chrUn_DS483839v1:0-4581.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483839v1:0-4581.chain
zcat psl/dm6.2bit:chrUn_DS486004v1:0-1001.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS486004v1:0-1001.chain
zcat psl/dm6.2bit:chrUn_DS486002v1:0-1001.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS486002v1:0-1001.chain
zcat psl/dm6.2bit:chrUn_DS486008v1:0-1001.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS486008v1:0-1001.chain
zcat psl/dm6.2bit:chrUn_DS485695v2:0-564.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485695v2:0-564.chain
zcat psl/dm6.2bit:chrUn_DS485566v2:0-544.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS485566v2:0-544.chain
zcat psl/dm6.2bit:chrUn_DS483840v1:0-4573.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483840v1:0-4573.chain
zcat psl/dm6.2bit:chrUn_DS483841v1:0-4553.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483841v1:0-4553.chain
zcat psl/dm6.2bit:chrX_DS483843v1_random:0-4515.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483843v1_random:0-4515.chain
zcat psl/dm6.2bit:chrUn_DS483844v1:0-4471.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483844v1:0-4471.chain
zcat psl/dm6.2bit:chrUn_DS483845v1:0-4465.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483845v1:0-4465.chain
zcat psl/dm6.2bit:chrUn_DS483846v1:0-4452.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483846v1:0-4452.chain
zcat psl/dm6.2bit:chrUn_DS483848v1:0-4436.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483848v1:0-4436.chain
zcat psl/dm6.2bit:chrUn_DS483849v1:0-4400.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483849v1:0-4400.chain
zcat psl/dm6.2bit:chrX_DS483851v1_random:0-4395.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483851v1_random:0-4395.chain
zcat psl/dm6.2bit:chrUn_DS483853v1:0-4381.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483853v1:0-4381.chain
zcat psl/dm6.2bit:chrUn_DS483854v1:0-4378.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483854v1:0-4378.chain
zcat psl/dm6.2bit:chrUn_DS483855v1:0-4377.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483855v1:0-4377.chain
zcat psl/dm6.2bit:chrUn_DS483856v1:0-4370.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483856v1:0-4370.chain
zcat psl/dm6.2bit:chrUn_DS483858v1:0-4361.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483858v1:0-4361.chain
zcat psl/dm6.2bit:chrUn_DS483859v1:0-4336.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483859v1:0-4336.chain
zcat psl/dm6.2bit:chrUn_DS483862v1:0-4310.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483862v1:0-4310.chain
zcat psl/dm6.2bit:chrUn_DS483861v1:0-4310.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483861v1:0-4310.chain
zcat psl/dm6.2bit:chrUn_DS483863v1:0-4305.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483863v1:0-4305.chain
zcat psl/dm6.2bit:chrUn_DS483864v1:0-4295.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483864v1:0-4295.chain
zcat psl/dm6.2bit:chrUn_DS483865v1:0-4289.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483865v1:0-4289.chain
zcat psl/dm6.2bit:chrUn_DS483866v1:0-4273.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483866v1:0-4273.chain
zcat psl/dm6.2bit:chrUn_DS483867v1:0-4272.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483867v1:0-4272.chain
zcat psl/dm6.2bit:chrUn_DS483868v1:0-4256.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483868v1:0-4256.chain
zcat psl/dm6.2bit:chrUn_DS483870v1:0-4231.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483870v1:0-4231.chain
zcat psl/dm6.2bit:chrUn_DS483871v1:0-4225.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483871v1:0-4225.chain
zcat psl/dm6.2bit:chrUn_DS483872v1:0-4222.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483872v1:0-4222.chain
zcat psl/dm6.2bit:chrUn_DS483873v1:0-4222.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483873v1:0-4222.chain
zcat psl/dm6.2bit:chrUn_DS483874v1:0-4202.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483874v1:0-4202.chain
zcat psl/dm6.2bit:chrY_DS483875v1_random:0-4197.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483875v1_random:0-4197.chain
zcat psl/dm6.2bit:chrUn_DS483876v1:0-4188.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483876v1:0-4188.chain
zcat psl/dm6.2bit:chrUn_DS483877v1:0-4183.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483877v1:0-4183.chain
zcat psl/dm6.2bit:chrUn_DS483878v1:0-4182.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483878v1:0-4182.chain
zcat psl/dm6.2bit:chrUn_DS483879v1:0-4163.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483879v1:0-4163.chain
zcat psl/dm6.2bit:chrUn_DS483880v1:0-4150.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483880v1:0-4150.chain
zcat psl/dm6.2bit:chrUn_DS483881v1:0-4135.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483881v1:0-4135.chain
zcat psl/dm6.2bit:chrX_DS483885v1_random:0-4085.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483885v1_random:0-4085.chain
zcat psl/dm6.2bit:chrUn_DS483886v1:0-4081.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483886v1:0-4081.chain
zcat psl/dm6.2bit:chrX_DS483888v1_random:0-4072.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483888v1_random:0-4072.chain
zcat psl/dm6.2bit:chrY_DS483889v1_random:0-4059.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483889v1_random:0-4059.chain
zcat psl/dm6.2bit:chrUn_DS483891v1:0-4030.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483891v1:0-4030.chain
zcat psl/dm6.2bit:chrX_DS483892v1_random:0-4013.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483892v1_random:0-4013.chain
zcat psl/dm6.2bit:chrX_DS483893v1_random:0-4012.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483893v1_random:0-4012.chain
zcat psl/dm6.2bit:chrUn_DS483895v1:0-4006.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483895v1:0-4006.chain
zcat psl/dm6.2bit:chrUn_DS483896v1:0-3991.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483896v1:0-3991.chain
zcat psl/dm6.2bit:chrX_DS483897v1_random:0-3984.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483897v1_random:0-3984.chain
zcat psl/dm6.2bit:chrUn_DS483898v1:0-3970.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483898v1:0-3970.chain
zcat psl/dm6.2bit:chrUn_DS483899v1:0-3964.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483899v1:0-3964.chain
zcat psl/dm6.2bit:chrUn_DS483900v1:0-3960.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483900v1:0-3960.chain
zcat psl/dm6.2bit:chrUn_DS483901v1:0-3950.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483901v1:0-3950.chain
zcat psl/dm6.2bit:chrX_DS483903v1_random:0-3941.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483903v1_random:0-3941.chain
zcat psl/dm6.2bit:chrUn_DS483904v1:0-3932.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483904v1:0-3932.chain
zcat psl/dm6.2bit:chrX_DS483905v1_random:0-3926.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483905v1_random:0-3926.chain
zcat psl/dm6.2bit:chrUn_DS483906v1:0-3924.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483906v1:0-3924.chain
zcat psl/dm6.2bit:chrX_DS483907v1_random:0-3921.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483907v1_random:0-3921.chain
zcat psl/dm6.2bit:chrX_DS483909v1_random:0-3913.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483909v1_random:0-3913.chain
zcat psl/dm6.2bit:chrUn_DS483908v1:0-3913.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483908v1:0-3913.chain
zcat psl/dm6.2bit:chrUn_DS483910v1:0-3906.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483910v1:0-3906.chain
zcat psl/dm6.2bit:chrUn_DS483913v1:0-3871.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483913v1:0-3871.chain
zcat psl/dm6.2bit:chrUn_DS483914v1:0-3864.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483914v1:0-3864.chain
zcat psl/dm6.2bit:chrUn_DS483915v1:0-3858.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483915v1:0-3858.chain
zcat psl/dm6.2bit:chrUn_DS483918v1:0-3818.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483918v1:0-3818.chain
zcat psl/dm6.2bit:chrUn_DS483919v1:0-3807.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483919v1:0-3807.chain
zcat psl/dm6.2bit:chrUn_DS483920v1:0-3806.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483920v1:0-3806.chain
zcat psl/dm6.2bit:chrUn_DS483921v1:0-3806.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483921v1:0-3806.chain
zcat psl/dm6.2bit:chrX_DS483923v1_random:0-3775.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483923v1_random:0-3775.chain
zcat psl/dm6.2bit:chrUn_DS483925v1:0-3755.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483925v1:0-3755.chain
zcat psl/dm6.2bit:chrX_DS483926v1_random:0-3745.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483926v1_random:0-3745.chain
zcat psl/dm6.2bit:chrUn_DS483927v1:0-3737.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483927v1:0-3737.chain
zcat psl/dm6.2bit:chrX_DS483928v1_random:0-3730.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483928v1_random:0-3730.chain
zcat psl/dm6.2bit:chrUn_DS483929v1:0-3717.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483929v1:0-3717.chain
zcat psl/dm6.2bit:chrUn_DS483930v1:0-3716.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483930v1:0-3716.chain
zcat psl/dm6.2bit:chrY_DS483931v1_random:0-3713.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483931v1_random:0-3713.chain
zcat psl/dm6.2bit:chrUn_DS483933v1:0-3708.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483933v1:0-3708.chain
zcat psl/dm6.2bit:chrUn_DS483936v1:0-3681.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483936v1:0-3681.chain
zcat psl/dm6.2bit:chrUn_DS483937v1:0-3660.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483937v1:0-3660.chain
zcat psl/dm6.2bit:chrUn_DS483938v1:0-3650.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483938v1:0-3650.chain
zcat psl/dm6.2bit:chrUn_DS483939v1:0-3649.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483939v1:0-3649.chain
zcat psl/dm6.2bit:chrUn_DS483940v1:0-3648.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483940v1:0-3648.chain
zcat psl/dm6.2bit:chrUn_DS483941v1:0-3646.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483941v1:0-3646.chain
zcat psl/dm6.2bit:chrUn_DS483943v1:0-3638.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483943v1:0-3638.chain
zcat psl/dm6.2bit:chrUn_DS483945v1:0-3622.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483945v1:0-3622.chain
zcat psl/dm6.2bit:chrUn_DS483944v1:0-3622.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483944v1:0-3622.chain
zcat psl/dm6.2bit:chrUn_DS483947v1:0-3603.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483947v1:0-3603.chain
zcat psl/dm6.2bit:chrX_DS483946v1_random:0-3603.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483946v1_random:0-3603.chain
zcat psl/dm6.2bit:chrX_DS483948v1_random:0-3602.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483948v1_random:0-3602.chain
zcat psl/dm6.2bit:chrUn_DS483949v1:0-3593.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483949v1:0-3593.chain
zcat psl/dm6.2bit:chrX_DS483950v1_random:0-3582.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483950v1_random:0-3582.chain
zcat psl/dm6.2bit:chrUn_DS483951v1:0-3574.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483951v1:0-3574.chain
zcat psl/dm6.2bit:chrUn_DS483953v1:0-3557.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483953v1:0-3557.chain
zcat psl/dm6.2bit:chrUn_DS483954v1:0-3554.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483954v1:0-3554.chain
zcat psl/dm6.2bit:chrUn_DS483956v1:0-3553.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483956v1:0-3553.chain
zcat psl/dm6.2bit:chrX_DS483955v1_random:0-3553.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483955v1_random:0-3553.chain
zcat psl/dm6.2bit:chrUn_DS483957v1:0-3553.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483957v1:0-3553.chain
zcat psl/dm6.2bit:chrY_DS483959v1_random:0-3537.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483959v1_random:0-3537.chain
zcat psl/dm6.2bit:chrUn_DS483961v1:0-3527.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483961v1:0-3527.chain
zcat psl/dm6.2bit:chrUn_DS483960v1:0-3527.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483960v1:0-3527.chain
zcat psl/dm6.2bit:chrX_DS483963v1_random:0-3523.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483963v1_random:0-3523.chain
zcat psl/dm6.2bit:chrUn_DS483964v1:0-3519.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483964v1:0-3519.chain
zcat psl/dm6.2bit:chrUn_DS483965v1:0-3503.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483965v1:0-3503.chain
zcat psl/dm6.2bit:chrY_DS483966v1_random:0-3502.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483966v1_random:0-3502.chain
zcat psl/dm6.2bit:chrY_DS483967v1_random:0-3499.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483967v1_random:0-3499.chain
zcat psl/dm6.2bit:chrX_DS483969v1_random:0-3498.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483969v1_random:0-3498.chain
zcat psl/dm6.2bit:chrUn_DS483970v1:0-3490.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483970v1:0-3490.chain
zcat psl/dm6.2bit:chrX_DS483971v1_random:0-3478.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483971v1_random:0-3478.chain
zcat psl/dm6.2bit:chrUn_DS483972v1:0-3477.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483972v1:0-3477.chain
zcat psl/dm6.2bit:chrX_DS483974v1_random:0-3473.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483974v1_random:0-3473.chain
zcat psl/dm6.2bit:chrUn_DS483975v1:0-3466.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483975v1:0-3466.chain
zcat psl/dm6.2bit:chrUn_DS483976v1:0-3463.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483976v1:0-3463.chain
zcat psl/dm6.2bit:chrUn_DS483977v1:0-3458.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483977v1:0-3458.chain
zcat psl/dm6.2bit:chrUn_DS483979v1:0-3434.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483979v1:0-3434.chain
zcat psl/dm6.2bit:chrUn_DS483982v1:0-3402.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483982v1:0-3402.chain
zcat psl/dm6.2bit:chrUn_DS483983v1:0-3396.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483983v1:0-3396.chain
zcat psl/dm6.2bit:chrUn_DS483985v1:0-3389.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483985v1:0-3389.chain
zcat psl/dm6.2bit:chrUn_DS483986v1:0-3386.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483986v1:0-3386.chain
zcat psl/dm6.2bit:chrY_DS483987v1_random:0-3375.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483987v1_random:0-3375.chain
zcat psl/dm6.2bit:chrY_DS483988v1_random:0-3374.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483988v1_random:0-3374.chain
zcat psl/dm6.2bit:chrUn_DS483989v1:0-3373.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483989v1:0-3373.chain
zcat psl/dm6.2bit:chrUn_DS483992v1:0-3365.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483992v1:0-3365.chain
zcat psl/dm6.2bit:chrUn_DS483994v1:0-3348.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483994v1:0-3348.chain
zcat psl/dm6.2bit:chrX_DS483995v1_random:0-3347.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS483995v1_random:0-3347.chain
zcat psl/dm6.2bit:chrY_DS483996v1_random:0-3341.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS483996v1_random:0-3341.chain
zcat psl/dm6.2bit:chrUn_DS483998v1:0-3313.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483998v1:0-3313.chain
zcat psl/dm6.2bit:chrUn_DS483999v1:0-3308.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS483999v1:0-3308.chain
zcat psl/dm6.2bit:chrUn_DS484000v1:0-3302.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484000v1:0-3302.chain
zcat psl/dm6.2bit:chrUn_DS484001v1:0-3299.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484001v1:0-3299.chain
zcat psl/dm6.2bit:chrX_DS484002v1_random:0-3290.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484002v1_random:0-3290.chain
zcat psl/dm6.2bit:chrUn_DS484003v1:0-3284.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484003v1:0-3284.chain
zcat psl/dm6.2bit:chrUn_DS484004v1:0-3277.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484004v1:0-3277.chain
zcat psl/dm6.2bit:chrX_DS484005v1_random:0-3275.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484005v1_random:0-3275.chain
zcat psl/dm6.2bit:chrUn_DS484006v1:0-3268.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484006v1:0-3268.chain
zcat psl/dm6.2bit:chrUn_DS484007v1:0-3262.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484007v1:0-3262.chain
zcat psl/dm6.2bit:chrUn_DS484010v1:0-3259.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484010v1:0-3259.chain
zcat psl/dm6.2bit:chrUn_DS484009v1:0-3259.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484009v1:0-3259.chain
zcat psl/dm6.2bit:chrX_DS484012v1_random:0-3254.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484012v1_random:0-3254.chain
zcat psl/dm6.2bit:chrUn_DS484013v1:0-3252.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484013v1:0-3252.chain
zcat psl/dm6.2bit:chrUn_DS484015v1:0-3234.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484015v1:0-3234.chain
zcat psl/dm6.2bit:chrUn_DS484017v1:0-3227.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484017v1:0-3227.chain
zcat psl/dm6.2bit:chrUn_DS484018v1:0-3223.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484018v1:0-3223.chain
zcat psl/dm6.2bit:chrUn_DS484020v1:0-3218.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484020v1:0-3218.chain
zcat psl/dm6.2bit:chrY_DS484021v1_random:0-3213.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484021v1_random:0-3213.chain
zcat psl/dm6.2bit:chrUn_DS484022v1:0-3209.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484022v1:0-3209.chain
zcat psl/dm6.2bit:chrX_DS484023v1_random:0-3206.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484023v1_random:0-3206.chain
zcat psl/dm6.2bit:chrUn_DS484025v1:0-3201.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484025v1:0-3201.chain
zcat psl/dm6.2bit:chrX_DS484026v1_random:0-3201.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484026v1_random:0-3201.chain
zcat psl/dm6.2bit:chrUn_DS484027v1:0-3197.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484027v1:0-3197.chain
zcat psl/dm6.2bit:chrUn_DS484028v1:0-3196.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484028v1:0-3196.chain
zcat psl/dm6.2bit:chrY_DS484029v1_random:0-3195.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484029v1_random:0-3195.chain
zcat psl/dm6.2bit:chrUn_DS484031v1:0-3190.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484031v1:0-3190.chain
zcat psl/dm6.2bit:chrUn_DS484036v1:0-3174.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484036v1:0-3174.chain
zcat psl/dm6.2bit:chrY_DS484037v1_random:0-3173.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484037v1_random:0-3173.chain
zcat psl/dm6.2bit:chrUn_DS484038v1:0-3171.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484038v1:0-3171.chain
zcat psl/dm6.2bit:chrUn_DS484039v1:0-3162.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484039v1:0-3162.chain
zcat psl/dm6.2bit:chrUn_DS484040v1:0-3159.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484040v1:0-3159.chain
zcat psl/dm6.2bit:chrUn_DS484041v1:0-3157.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484041v1:0-3157.chain
zcat psl/dm6.2bit:chrUn_DS484042v1:0-3156.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484042v1:0-3156.chain
zcat psl/dm6.2bit:chrY_DS484043v1_random:0-3154.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484043v1_random:0-3154.chain
zcat psl/dm6.2bit:chrUn_DS484044v1:0-3144.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484044v1:0-3144.chain
zcat psl/dm6.2bit:chrUn_DS484045v1:0-3129.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484045v1:0-3129.chain
zcat psl/dm6.2bit:chrUn_DS484047v1:0-3123.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484047v1:0-3123.chain
zcat psl/dm6.2bit:chrX_DS484046v1_random:0-3123.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484046v1_random:0-3123.chain
zcat psl/dm6.2bit:chrUn_DS484048v1:0-3120.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484048v1:0-3120.chain
zcat psl/dm6.2bit:chrY_DS484049v1_random:0-3102.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484049v1_random:0-3102.chain
zcat psl/dm6.2bit:chrX_DS484051v1_random:0-3100.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484051v1_random:0-3100.chain
zcat psl/dm6.2bit:chrUn_DS484050v1:0-3100.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484050v1:0-3100.chain
zcat psl/dm6.2bit:chrUn_DS484052v1:0-3089.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484052v1:0-3089.chain
zcat psl/dm6.2bit:chrUn_DS484053v1:0-3085.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484053v1:0-3085.chain
zcat psl/dm6.2bit:chrUn_DS484054v1:0-3080.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484054v1:0-3080.chain
zcat psl/dm6.2bit:chrUn_DS484055v1:0-3080.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484055v1:0-3080.chain
zcat psl/dm6.2bit:chrY_DS484056v1_random:0-3077.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484056v1_random:0-3077.chain
zcat psl/dm6.2bit:chrX_DS484057v1_random:0-3076.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484057v1_random:0-3076.chain
zcat psl/dm6.2bit:chrUn_DS484059v1:0-3073.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484059v1:0-3073.chain
zcat psl/dm6.2bit:chrUn_DS484058v1:0-3073.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484058v1:0-3073.chain
zcat psl/dm6.2bit:chrX_DS484060v1_random:0-3065.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484060v1_random:0-3065.chain
zcat psl/dm6.2bit:chrX_DS484061v1_random:0-3059.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484061v1_random:0-3059.chain
zcat psl/dm6.2bit:chrUn_DS484062v1:0-3058.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484062v1:0-3058.chain
zcat psl/dm6.2bit:chrY_DS484063v1_random:0-3046.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484063v1_random:0-3046.chain
zcat psl/dm6.2bit:chrUn_DS484064v1:0-3044.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484064v1:0-3044.chain
zcat psl/dm6.2bit:chrUn_DS484065v1:0-3043.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484065v1:0-3043.chain
zcat psl/dm6.2bit:chrUn_DS484066v1:0-3025.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484066v1:0-3025.chain
zcat psl/dm6.2bit:chrX_DS484067v1_random:0-3024.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484067v1_random:0-3024.chain
zcat psl/dm6.2bit:chrUn_DS484068v1:0-3013.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484068v1:0-3013.chain
zcat psl/dm6.2bit:chrUn_DS484069v1:0-3010.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484069v1:0-3010.chain
zcat psl/dm6.2bit:chrUn_DS484070v1:0-3009.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484070v1:0-3009.chain
zcat psl/dm6.2bit:chrX_DS484072v1_random:0-3002.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484072v1_random:0-3002.chain
zcat psl/dm6.2bit:chrUn_DS484073v1:0-2999.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484073v1:0-2999.chain
zcat psl/dm6.2bit:chrX_DS484074v1_random:0-2999.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484074v1_random:0-2999.chain
zcat psl/dm6.2bit:chrX_DS484075v1_random:0-2996.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484075v1_random:0-2996.chain
zcat psl/dm6.2bit:chrUn_DS484076v1:0-2991.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484076v1:0-2991.chain
zcat psl/dm6.2bit:chrUn_DS484077v1:0-2984.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484077v1:0-2984.chain
zcat psl/dm6.2bit:chrUn_DS484078v1:0-2982.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484078v1:0-2982.chain
zcat psl/dm6.2bit:chrUn_DS484079v1:0-2982.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484079v1:0-2982.chain
zcat psl/dm6.2bit:chrUn_DS484080v1:0-2971.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484080v1:0-2971.chain
zcat psl/dm6.2bit:chrX_DS484081v1_random:0-2964.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484081v1_random:0-2964.chain
zcat psl/dm6.2bit:chrUn_DS484083v1:0-2957.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484083v1:0-2957.chain
zcat psl/dm6.2bit:chrX_DS484084v1_random:0-2956.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484084v1_random:0-2956.chain
zcat psl/dm6.2bit:chrX_DS484085v1_random:0-2945.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484085v1_random:0-2945.chain
zcat psl/dm6.2bit:chrUn_DS484086v1:0-2943.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484086v1:0-2943.chain
zcat psl/dm6.2bit:chrUn_DS484087v1:0-2937.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484087v1:0-2937.chain
zcat psl/dm6.2bit:chrX_DS484088v1_random:0-2937.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484088v1_random:0-2937.chain
zcat psl/dm6.2bit:chrUn_DS484089v1:0-2928.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484089v1:0-2928.chain
zcat psl/dm6.2bit:chrUn_DS484090v1:0-2927.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484090v1:0-2927.chain
zcat psl/dm6.2bit:chrUn_DS484091v1:0-2926.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484091v1:0-2926.chain
zcat psl/dm6.2bit:chrUn_DS484092v1:0-2924.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484092v1:0-2924.chain
zcat psl/dm6.2bit:chrUn_DS484093v1:0-2922.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484093v1:0-2922.chain
zcat psl/dm6.2bit:chrY_DS484094v1_random:0-2922.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484094v1_random:0-2922.chain
zcat psl/dm6.2bit:chrUn_DS484095v1:0-2919.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484095v1:0-2919.chain
zcat psl/dm6.2bit:chrUn_DS484096v1:0-2916.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484096v1:0-2916.chain
zcat psl/dm6.2bit:chrUn_DS484097v1:0-2914.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484097v1:0-2914.chain
zcat psl/dm6.2bit:chrUn_DS484098v1:0-2911.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484098v1:0-2911.chain
zcat psl/dm6.2bit:chrX_DS484099v1_random:0-2910.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484099v1_random:0-2910.chain
zcat psl/dm6.2bit:chrUn_DS484100v1:0-2905.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484100v1:0-2905.chain
zcat psl/dm6.2bit:chrX_DS484101v1_random:0-2904.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484101v1_random:0-2904.chain
zcat psl/dm6.2bit:chrUn_DS484102v1:0-2903.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484102v1:0-2903.chain
zcat psl/dm6.2bit:chrY_DS484103v1_random:0-2899.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484103v1_random:0-2899.chain
zcat psl/dm6.2bit:chrUn_DS484104v1:0-2893.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484104v1:0-2893.chain
zcat psl/dm6.2bit:chrUn_DS484105v1:0-2889.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484105v1:0-2889.chain
zcat psl/dm6.2bit:chrUn_DS484106v1:0-2884.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484106v1:0-2884.chain
zcat psl/dm6.2bit:chrUn_DS484109v1:0-2882.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484109v1:0-2882.chain
zcat psl/dm6.2bit:chrUn_DS484107v1:0-2882.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484107v1:0-2882.chain
zcat psl/dm6.2bit:chrUn_DS484108v1:0-2882.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484108v1:0-2882.chain
zcat psl/dm6.2bit:chrUn_DS484111v1:0-2881.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484111v1:0-2881.chain
zcat psl/dm6.2bit:chrX_DS484112v1_random:0-2877.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484112v1_random:0-2877.chain
zcat psl/dm6.2bit:chrUn_DS484113v1:0-2876.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484113v1:0-2876.chain
zcat psl/dm6.2bit:chrX_DS484114v1_random:0-2871.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484114v1_random:0-2871.chain
zcat psl/dm6.2bit:chrUn_DS484116v1:0-2860.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484116v1:0-2860.chain
zcat psl/dm6.2bit:chrUn_DS484117v1:0-2860.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484117v1:0-2860.chain
zcat psl/dm6.2bit:chrUn_DS484118v1:0-2858.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484118v1:0-2858.chain
zcat psl/dm6.2bit:chrUn_DS484120v1:0-2855.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484120v1:0-2855.chain
zcat psl/dm6.2bit:chrUn_DS484122v1:0-2849.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484122v1:0-2849.chain
zcat psl/dm6.2bit:chrUn_DS484123v1:0-2848.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484123v1:0-2848.chain
zcat psl/dm6.2bit:chrX_DS484124v1_random:0-2846.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484124v1_random:0-2846.chain
zcat psl/dm6.2bit:chrX_DS484125v1_random:0-2844.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484125v1_random:0-2844.chain
zcat psl/dm6.2bit:chrX_DS484126v1_random:0-2841.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484126v1_random:0-2841.chain
zcat psl/dm6.2bit:chrY_DS484128v1_random:0-2836.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484128v1_random:0-2836.chain
zcat psl/dm6.2bit:chrX_DS484130v1_random:0-2834.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484130v1_random:0-2834.chain
zcat psl/dm6.2bit:chrX_DS484131v1_random:0-2833.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484131v1_random:0-2833.chain
zcat psl/dm6.2bit:chrX_DS484132v1_random:0-2830.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484132v1_random:0-2830.chain
zcat psl/dm6.2bit:chrX_DS484133v1_random:0-2829.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484133v1_random:0-2829.chain
zcat psl/dm6.2bit:chrUn_DS484134v1:0-2828.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484134v1:0-2828.chain
zcat psl/dm6.2bit:chrX_DS484135v1_random:0-2825.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484135v1_random:0-2825.chain
zcat psl/dm6.2bit:chrX_DS484136v1_random:0-2823.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484136v1_random:0-2823.chain
zcat psl/dm6.2bit:chrX_DS484137v1_random:0-2822.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484137v1_random:0-2822.chain
zcat psl/dm6.2bit:chrUn_DS484138v1:0-2822.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484138v1:0-2822.chain
zcat psl/dm6.2bit:chrUn_DS484139v1:0-2820.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484139v1:0-2820.chain
zcat psl/dm6.2bit:chrX_DS484140v1_random:0-2819.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484140v1_random:0-2819.chain
zcat psl/dm6.2bit:chrY_DS484142v1_random:0-2815.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484142v1_random:0-2815.chain
zcat psl/dm6.2bit:chrX_DS484143v1_random:0-2814.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484143v1_random:0-2814.chain
zcat psl/dm6.2bit:chrUn_DS484144v1:0-2811.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484144v1:0-2811.chain
zcat psl/dm6.2bit:chrUn_DS484145v1:0-2804.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484145v1:0-2804.chain
zcat psl/dm6.2bit:chrY_DS484146v1_random:0-2799.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484146v1_random:0-2799.chain
zcat psl/dm6.2bit:chrUn_DS484147v1:0-2796.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484147v1:0-2796.chain
zcat psl/dm6.2bit:chrUn_DS484148v1:0-2795.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484148v1:0-2795.chain
zcat psl/dm6.2bit:chrUn_DS484149v1:0-2795.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484149v1:0-2795.chain
zcat psl/dm6.2bit:chrUn_DS484151v1:0-2794.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484151v1:0-2794.chain
zcat psl/dm6.2bit:chrUn_DS484152v1:0-2793.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484152v1:0-2793.chain
zcat psl/dm6.2bit:chrUn_DS484153v1:0-2793.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484153v1:0-2793.chain
zcat psl/dm6.2bit:chrUn_DS484154v1:0-2791.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484154v1:0-2791.chain
zcat psl/dm6.2bit:chrUn_DS484155v1:0-2790.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484155v1:0-2790.chain
zcat psl/dm6.2bit:chrUn_DS484156v1:0-2788.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484156v1:0-2788.chain
zcat psl/dm6.2bit:chrUn_DS484157v1:0-2787.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484157v1:0-2787.chain
zcat psl/dm6.2bit:chrUn_DS484159v1:0-2784.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484159v1:0-2784.chain
zcat psl/dm6.2bit:chrUn_DS484160v1:0-2783.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484160v1:0-2783.chain
zcat psl/dm6.2bit:chrX_DS484161v1_random:0-2781.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484161v1_random:0-2781.chain
zcat psl/dm6.2bit:chrX_DS484162v1_random:0-2765.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484162v1_random:0-2765.chain
zcat psl/dm6.2bit:chrY_DS484164v1_random:0-2762.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484164v1_random:0-2762.chain
zcat psl/dm6.2bit:chrX_DS484165v1_random:0-2751.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484165v1_random:0-2751.chain
zcat psl/dm6.2bit:chrX_DS484166v1_random:0-2750.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484166v1_random:0-2750.chain
zcat psl/dm6.2bit:chrUn_DS484167v1:0-2745.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484167v1:0-2745.chain
zcat psl/dm6.2bit:chrUn_DS484168v1:0-2744.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484168v1:0-2744.chain
zcat psl/dm6.2bit:chrUn_DS484169v1:0-2736.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484169v1:0-2736.chain
zcat psl/dm6.2bit:chrUn_DS484170v1:0-2733.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484170v1:0-2733.chain
zcat psl/dm6.2bit:chrY_DS484171v1_random:0-2728.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484171v1_random:0-2728.chain
zcat psl/dm6.2bit:chrY_DS484175v1_random:0-2709.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484175v1_random:0-2709.chain
zcat psl/dm6.2bit:chrUn_DS484176v1:0-2708.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484176v1:0-2708.chain
zcat psl/dm6.2bit:chrUn_DS484177v1:0-2703.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484177v1:0-2703.chain
zcat psl/dm6.2bit:chrX_DS484178v1_random:0-2698.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484178v1_random:0-2698.chain
zcat psl/dm6.2bit:chrUn_DS484180v1:0-2697.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484180v1:0-2697.chain
zcat psl/dm6.2bit:chrY_DS484181v1_random:0-2694.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484181v1_random:0-2694.chain
zcat psl/dm6.2bit:chrX_DS484182v1_random:0-2689.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484182v1_random:0-2689.chain
zcat psl/dm6.2bit:chrY_DS484184v1_random:0-2688.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484184v1_random:0-2688.chain
zcat psl/dm6.2bit:chrUn_DS484183v1:0-2688.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484183v1:0-2688.chain
zcat psl/dm6.2bit:chrX_DS484185v1_random:0-2686.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484185v1_random:0-2686.chain
zcat psl/dm6.2bit:chrX_DS484187v1_random:0-2671.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484187v1_random:0-2671.chain
zcat psl/dm6.2bit:chrUn_DS484188v1:0-2670.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484188v1:0-2670.chain
zcat psl/dm6.2bit:chrUn_DS484189v1:0-2669.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484189v1:0-2669.chain
zcat psl/dm6.2bit:chrUn_DS484190v1:0-2668.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484190v1:0-2668.chain
zcat psl/dm6.2bit:chrUn_DS484191v1:0-2665.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484191v1:0-2665.chain
zcat psl/dm6.2bit:chrUn_DS484192v1:0-2664.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484192v1:0-2664.chain
zcat psl/dm6.2bit:chrUn_DS484193v1:0-2647.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484193v1:0-2647.chain
zcat psl/dm6.2bit:chrUn_DS484196v1:0-2644.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484196v1:0-2644.chain
zcat psl/dm6.2bit:chrY_DS484197v1_random:0-2642.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484197v1_random:0-2642.chain
zcat psl/dm6.2bit:chrX_DS484198v1_random:0-2641.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484198v1_random:0-2641.chain
zcat psl/dm6.2bit:chrX_DS484200v1_random:0-2639.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484200v1_random:0-2639.chain
zcat psl/dm6.2bit:chrX_DS484201v1_random:0-2637.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484201v1_random:0-2637.chain
zcat psl/dm6.2bit:chrUn_DS484202v1:0-2636.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484202v1:0-2636.chain
zcat psl/dm6.2bit:chrX_DS484203v1_random:0-2635.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484203v1_random:0-2635.chain
zcat psl/dm6.2bit:chrUn_DS484205v1:0-2629.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484205v1:0-2629.chain
zcat psl/dm6.2bit:chrUn_DS484206v1:0-2628.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484206v1:0-2628.chain
zcat psl/dm6.2bit:chrUn_DS484207v1:0-2626.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484207v1:0-2626.chain
zcat psl/dm6.2bit:chrUn_DS484209v1:0-2618.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484209v1:0-2618.chain
zcat psl/dm6.2bit:chrUn_DS484210v1:0-2617.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484210v1:0-2617.chain
zcat psl/dm6.2bit:chrUn_DS484212v1:0-2612.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484212v1:0-2612.chain
zcat psl/dm6.2bit:chrUn_DS484213v1:0-2611.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484213v1:0-2611.chain
zcat psl/dm6.2bit:chrX_DS484215v1_random:0-2605.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484215v1_random:0-2605.chain
zcat psl/dm6.2bit:chrX_DS484216v1_random:0-2603.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484216v1_random:0-2603.chain
zcat psl/dm6.2bit:chrUn_DS484217v1:0-2603.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484217v1:0-2603.chain
zcat psl/dm6.2bit:chrX_DS484219v1_random:0-2591.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484219v1_random:0-2591.chain
zcat psl/dm6.2bit:chrUn_DS484220v1:0-2588.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484220v1:0-2588.chain
zcat psl/dm6.2bit:chrUn_DS484221v1:0-2584.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484221v1:0-2584.chain
zcat psl/dm6.2bit:chrUn_DS484222v1:0-2583.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484222v1:0-2583.chain
zcat psl/dm6.2bit:chrUn_DS484224v1:0-2577.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484224v1:0-2577.chain
zcat psl/dm6.2bit:chrUn_DS484225v1:0-2577.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484225v1:0-2577.chain
zcat psl/dm6.2bit:chrUn_DS484226v1:0-2576.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484226v1:0-2576.chain
zcat psl/dm6.2bit:chrUn_DS484230v1:0-2575.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484230v1:0-2575.chain
zcat psl/dm6.2bit:chrUn_DS484229v1:0-2575.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484229v1:0-2575.chain
zcat psl/dm6.2bit:chrUn_DS484228v1:0-2575.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484228v1:0-2575.chain
zcat psl/dm6.2bit:chrUn_DS484231v1:0-2574.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484231v1:0-2574.chain
zcat psl/dm6.2bit:chrUn_DS484232v1:0-2570.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484232v1:0-2570.chain
zcat psl/dm6.2bit:chrY_DS484233v1_random:0-2565.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484233v1_random:0-2565.chain
zcat psl/dm6.2bit:chrUn_DS484234v1:0-2561.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484234v1:0-2561.chain
zcat psl/dm6.2bit:chrX_DS484235v1_random:0-2557.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484235v1_random:0-2557.chain
zcat psl/dm6.2bit:chrUn_DS484236v1:0-2556.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484236v1:0-2556.chain
zcat psl/dm6.2bit:chrUn_DS484238v1:0-2555.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484238v1:0-2555.chain
zcat psl/dm6.2bit:chrUn_DS484239v1:0-2549.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484239v1:0-2549.chain
zcat psl/dm6.2bit:chrUn_DS484241v1:0-2547.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484241v1:0-2547.chain
zcat psl/dm6.2bit:chrUn_DS484242v1:0-2541.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484242v1:0-2541.chain
zcat psl/dm6.2bit:chrUn_DS484243v1:0-2541.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484243v1:0-2541.chain
zcat psl/dm6.2bit:chrUn_DS484244v1:0-2536.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484244v1:0-2536.chain
zcat psl/dm6.2bit:chrUn_DS484246v1:0-2529.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484246v1:0-2529.chain
zcat psl/dm6.2bit:chrUn_DS484247v1:0-2529.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484247v1:0-2529.chain
zcat psl/dm6.2bit:chrY_DS484249v1_random:0-2522.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484249v1_random:0-2522.chain
zcat psl/dm6.2bit:chrUn_DS484251v1:0-2521.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484251v1:0-2521.chain
zcat psl/dm6.2bit:chrY_DS484250v1_random:0-2521.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484250v1_random:0-2521.chain
zcat psl/dm6.2bit:chrX_DS484252v1_random:0-2520.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484252v1_random:0-2520.chain
zcat psl/dm6.2bit:chrUn_DS484253v1:0-2520.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484253v1:0-2520.chain
zcat psl/dm6.2bit:chrUn_DS484254v1:0-2517.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484254v1:0-2517.chain
zcat psl/dm6.2bit:chrUn_DS484255v1:0-2516.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484255v1:0-2516.chain
zcat psl/dm6.2bit:chrUn_DS484256v1:0-2511.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484256v1:0-2511.chain
zcat psl/dm6.2bit:chrUn_DS484257v1:0-2511.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484257v1:0-2511.chain
zcat psl/dm6.2bit:chrUn_DS484258v1:0-2510.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484258v1:0-2510.chain
zcat psl/dm6.2bit:chrY_DS484259v1_random:0-2508.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484259v1_random:0-2508.chain
zcat psl/dm6.2bit:chrX_DS484260v1_random:0-2505.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484260v1_random:0-2505.chain
zcat psl/dm6.2bit:chrX_DS484261v1_random:0-2500.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484261v1_random:0-2500.chain
zcat psl/dm6.2bit:chrUn_DS484262v1:0-2491.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484262v1:0-2491.chain
zcat psl/dm6.2bit:chrUn_DS484263v1:0-2487.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484263v1:0-2487.chain
zcat psl/dm6.2bit:chrUn_DS484264v1:0-2479.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484264v1:0-2479.chain
zcat psl/dm6.2bit:chrY_DS484266v1_random:0-2477.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484266v1_random:0-2477.chain
zcat psl/dm6.2bit:chrUn_DS484267v1:0-2476.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484267v1:0-2476.chain
zcat psl/dm6.2bit:chrX_DS484268v1_random:0-2475.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484268v1_random:0-2475.chain
zcat psl/dm6.2bit:chrY_DS484270v1_random:0-2473.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484270v1_random:0-2473.chain
zcat psl/dm6.2bit:chrUn_DS484271v1:0-2470.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484271v1:0-2470.chain
zcat psl/dm6.2bit:chrX_DS484272v1_random:0-2464.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484272v1_random:0-2464.chain
zcat psl/dm6.2bit:chrX_DS484273v1_random:0-2463.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484273v1_random:0-2463.chain
zcat psl/dm6.2bit:chrUn_DS484274v1:0-2462.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484274v1:0-2462.chain
zcat psl/dm6.2bit:chrUn_DS484275v1:0-2451.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484275v1:0-2451.chain
zcat psl/dm6.2bit:chrUn_DS484276v1:0-2447.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484276v1:0-2447.chain
zcat psl/dm6.2bit:chrUn_DS484277v1:0-2442.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484277v1:0-2442.chain
zcat psl/dm6.2bit:chrX_DS484278v1_random:0-2439.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484278v1_random:0-2439.chain
zcat psl/dm6.2bit:chrUn_DS484279v1:0-2438.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484279v1:0-2438.chain
zcat psl/dm6.2bit:chrUn_DS484280v1:0-2438.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484280v1:0-2438.chain
zcat psl/dm6.2bit:chrUn_DS484281v1:0-2438.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484281v1:0-2438.chain
zcat psl/dm6.2bit:chrUn_DS484282v1:0-2435.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484282v1:0-2435.chain
zcat psl/dm6.2bit:chrUn_DS484283v1:0-2434.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484283v1:0-2434.chain
zcat psl/dm6.2bit:chrX_DS484284v1_random:0-2432.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484284v1_random:0-2432.chain
zcat psl/dm6.2bit:chrUn_DS484285v1:0-2431.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484285v1:0-2431.chain
zcat psl/dm6.2bit:chrUn_DS484286v1:0-2429.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484286v1:0-2429.chain
zcat psl/dm6.2bit:chrUn_DS484287v1:0-2428.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484287v1:0-2428.chain
zcat psl/dm6.2bit:chrUn_DS484289v1:0-2425.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484289v1:0-2425.chain
zcat psl/dm6.2bit:chrX_DS484288v1_random:0-2425.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484288v1_random:0-2425.chain
zcat psl/dm6.2bit:chrUn_DS484291v1:0-2421.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484291v1:0-2421.chain
zcat psl/dm6.2bit:chrUn_DS484292v1:0-2421.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484292v1:0-2421.chain
zcat psl/dm6.2bit:chrX_DS484293v1_random:0-2420.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484293v1_random:0-2420.chain
zcat psl/dm6.2bit:chrUn_DS484294v1:0-2419.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484294v1:0-2419.chain
zcat psl/dm6.2bit:chrUn_DS484296v1:0-2417.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484296v1:0-2417.chain
zcat psl/dm6.2bit:chrX_DS484297v1_random:0-2413.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484297v1_random:0-2413.chain
zcat psl/dm6.2bit:chrX_DS484298v1_random:0-2412.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484298v1_random:0-2412.chain
zcat psl/dm6.2bit:chrUn_DS484300v1:0-2400.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484300v1:0-2400.chain
zcat psl/dm6.2bit:chrUn_DS484301v1:0-2394.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484301v1:0-2394.chain
zcat psl/dm6.2bit:chrUn_DS484303v1:0-2390.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484303v1:0-2390.chain
zcat psl/dm6.2bit:chrUn_DS484304v1:0-2390.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484304v1:0-2390.chain
zcat psl/dm6.2bit:chrX_DS484305v1_random:0-2389.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484305v1_random:0-2389.chain
zcat psl/dm6.2bit:chrUn_DS484306v1:0-2385.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484306v1:0-2385.chain
zcat psl/dm6.2bit:chrUn_DS484307v1:0-2385.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484307v1:0-2385.chain
zcat psl/dm6.2bit:chrUn_DS484308v1:0-2385.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484308v1:0-2385.chain
zcat psl/dm6.2bit:chrUn_DS484309v1:0-2384.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484309v1:0-2384.chain
zcat psl/dm6.2bit:chrUn_DS484311v1:0-2383.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484311v1:0-2383.chain
zcat psl/dm6.2bit:chrUn_DS484310v1:0-2383.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484310v1:0-2383.chain
zcat psl/dm6.2bit:chrUn_DS484312v1:0-2382.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484312v1:0-2382.chain
zcat psl/dm6.2bit:chrUn_DS484314v1:0-2381.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484314v1:0-2381.chain
zcat psl/dm6.2bit:chrUn_DS484313v1:0-2381.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484313v1:0-2381.chain
zcat psl/dm6.2bit:chrX_DS484316v1_random:0-2379.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484316v1_random:0-2379.chain
zcat psl/dm6.2bit:chrUn_DS484315v1:0-2379.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484315v1:0-2379.chain
zcat psl/dm6.2bit:chrUn_DS484317v1:0-2378.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484317v1:0-2378.chain
zcat psl/dm6.2bit:chrUn_DS484318v1:0-2375.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484318v1:0-2375.chain
zcat psl/dm6.2bit:chrX_DS484319v1_random:0-2372.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484319v1_random:0-2372.chain
zcat psl/dm6.2bit:chrUn_DS484320v1:0-2369.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484320v1:0-2369.chain
zcat psl/dm6.2bit:chrUn_DS484321v1:0-2368.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484321v1:0-2368.chain
zcat psl/dm6.2bit:chrX_DS484322v1_random:0-2366.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484322v1_random:0-2366.chain
zcat psl/dm6.2bit:chrX_DS484323v1_random:0-2363.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484323v1_random:0-2363.chain
zcat psl/dm6.2bit:chrX_DS484326v1_random:0-2357.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484326v1_random:0-2357.chain
zcat psl/dm6.2bit:chrX_DS484328v1_random:0-2355.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484328v1_random:0-2355.chain
zcat psl/dm6.2bit:chrUn_DS484329v1:0-2354.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484329v1:0-2354.chain
zcat psl/dm6.2bit:chrX_DS484330v1_random:0-2353.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484330v1_random:0-2353.chain
zcat psl/dm6.2bit:chrUn_DS484331v1:0-2352.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484331v1:0-2352.chain
zcat psl/dm6.2bit:chrUn_DS484333v1:0-2344.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484333v1:0-2344.chain
zcat psl/dm6.2bit:chrUn_DS484335v1:0-2342.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484335v1:0-2342.chain
zcat psl/dm6.2bit:chrY_DS484336v1_random:0-2342.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484336v1_random:0-2342.chain
zcat psl/dm6.2bit:chrX_DS484337v1_random:0-2335.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484337v1_random:0-2335.chain
zcat psl/dm6.2bit:chrUn_DS484339v1:0-2330.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484339v1:0-2330.chain
zcat psl/dm6.2bit:chrX_DS484341v1_random:0-2328.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484341v1_random:0-2328.chain
zcat psl/dm6.2bit:chrUn_DS484340v1:0-2328.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484340v1:0-2328.chain
zcat psl/dm6.2bit:chrUn_DS484342v1:0-2326.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484342v1:0-2326.chain
zcat psl/dm6.2bit:chrUn_DS484343v1:0-2325.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484343v1:0-2325.chain
zcat psl/dm6.2bit:chrX_DS484344v1_random:0-2322.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484344v1_random:0-2322.chain
zcat psl/dm6.2bit:chrX_DS484345v1_random:0-2318.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484345v1_random:0-2318.chain
zcat psl/dm6.2bit:chrX_DS484346v1_random:0-2317.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484346v1_random:0-2317.chain
zcat psl/dm6.2bit:chrUn_DS484348v1:0-2308.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484348v1:0-2308.chain
zcat psl/dm6.2bit:chrX_DS484349v1_random:0-2307.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484349v1_random:0-2307.chain
zcat psl/dm6.2bit:chrUn_DS484350v1:0-2304.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484350v1:0-2304.chain
zcat psl/dm6.2bit:chrY_DS484351v1_random:0-2303.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484351v1_random:0-2303.chain
zcat psl/dm6.2bit:chrUn_DS484353v1:0-2295.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484353v1:0-2295.chain
zcat psl/dm6.2bit:chrX_DS484354v1_random:0-2293.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484354v1_random:0-2293.chain
zcat psl/dm6.2bit:chrUn_DS484355v1:0-2291.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484355v1:0-2291.chain
zcat psl/dm6.2bit:chrX_DS484356v1_random:0-2289.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484356v1_random:0-2289.chain
zcat psl/dm6.2bit:chrX_DS484357v1_random:0-2287.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484357v1_random:0-2287.chain
zcat psl/dm6.2bit:chrX_DS484358v1_random:0-2286.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484358v1_random:0-2286.chain
zcat psl/dm6.2bit:chrX_DS484359v1_random:0-2284.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484359v1_random:0-2284.chain
zcat psl/dm6.2bit:chrX_DS484360v1_random:0-2283.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484360v1_random:0-2283.chain
zcat psl/dm6.2bit:chrX_DS484361v1_random:0-2282.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484361v1_random:0-2282.chain
zcat psl/dm6.2bit:chrX_DS484362v1_random:0-2273.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484362v1_random:0-2273.chain
zcat psl/dm6.2bit:chrUn_DS484363v1:0-2270.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484363v1:0-2270.chain
zcat psl/dm6.2bit:chrX_DS484364v1_random:0-2269.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484364v1_random:0-2269.chain
zcat psl/dm6.2bit:chrUn_DS484366v1:0-2266.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484366v1:0-2266.chain
zcat psl/dm6.2bit:chrX_DS484367v1_random:0-2259.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484367v1_random:0-2259.chain
zcat psl/dm6.2bit:chrX_DS484368v1_random:0-2259.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484368v1_random:0-2259.chain
zcat psl/dm6.2bit:chrUn_DS484369v1:0-2253.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484369v1:0-2253.chain
zcat psl/dm6.2bit:chrUn_DS484370v1:0-2248.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484370v1:0-2248.chain
zcat psl/dm6.2bit:chrX_DS484371v1_random:0-2247.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484371v1_random:0-2247.chain
zcat psl/dm6.2bit:chrX_DS484374v1_random:0-2237.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484374v1_random:0-2237.chain
zcat psl/dm6.2bit:chrUn_DS484375v1:0-2234.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484375v1:0-2234.chain
zcat psl/dm6.2bit:chrUn_DS484378v1:0-2232.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484378v1:0-2232.chain
zcat psl/dm6.2bit:chrY_DS484377v1_random:0-2232.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484377v1_random:0-2232.chain
zcat psl/dm6.2bit:chrX_DS484379v1_random:0-2228.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484379v1_random:0-2228.chain
zcat psl/dm6.2bit:chrUn_DS484380v1:0-2227.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484380v1:0-2227.chain
zcat psl/dm6.2bit:chrX_DS484382v1_random:0-2223.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484382v1_random:0-2223.chain
zcat psl/dm6.2bit:chrUn_DS484383v1:0-2221.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484383v1:0-2221.chain
zcat psl/dm6.2bit:chrX_DS484384v1_random:0-2220.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484384v1_random:0-2220.chain
zcat psl/dm6.2bit:chrUn_DS484385v1:0-2217.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484385v1:0-2217.chain
zcat psl/dm6.2bit:chrUn_DS484386v1:0-2216.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484386v1:0-2216.chain
zcat psl/dm6.2bit:chrX_DS484387v1_random:0-2210.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484387v1_random:0-2210.chain
zcat psl/dm6.2bit:chrX_DS484388v1_random:0-2209.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484388v1_random:0-2209.chain
zcat psl/dm6.2bit:chrUn_DS484389v1:0-2207.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484389v1:0-2207.chain
zcat psl/dm6.2bit:chrY_DS484390v1_random:0-2206.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484390v1_random:0-2206.chain
zcat psl/dm6.2bit:chrUn_DS484391v1:0-2205.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484391v1:0-2205.chain
zcat psl/dm6.2bit:chrX_DS484393v1_random:0-2201.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484393v1_random:0-2201.chain
zcat psl/dm6.2bit:chrUn_DS484394v1:0-2200.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484394v1:0-2200.chain
zcat psl/dm6.2bit:chrUn_DS484396v1:0-2198.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484396v1:0-2198.chain
zcat psl/dm6.2bit:chrUn_DS484395v1:0-2198.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484395v1:0-2198.chain
zcat psl/dm6.2bit:chrX_DS484397v1_random:0-2196.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484397v1_random:0-2196.chain
zcat psl/dm6.2bit:chrX_DS484399v1_random:0-2192.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484399v1_random:0-2192.chain
zcat psl/dm6.2bit:chrUn_DS484400v1:0-2190.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484400v1:0-2190.chain
zcat psl/dm6.2bit:chrX_DS484402v1_random:0-2189.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484402v1_random:0-2189.chain
zcat psl/dm6.2bit:chrX_DS484401v1_random:0-2189.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484401v1_random:0-2189.chain
zcat psl/dm6.2bit:chrUn_DS484403v1:0-2187.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484403v1:0-2187.chain
zcat psl/dm6.2bit:chrUn_DS484404v1:0-2185.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484404v1:0-2185.chain
zcat psl/dm6.2bit:chrX_DS484406v1_random:0-2177.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484406v1_random:0-2177.chain
zcat psl/dm6.2bit:chrUn_DS484407v1:0-2176.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484407v1:0-2176.chain
zcat psl/dm6.2bit:chrUn_DS484408v1:0-2173.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484408v1:0-2173.chain
zcat psl/dm6.2bit:chrX_DS484409v1_random:0-2166.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484409v1_random:0-2166.chain
zcat psl/dm6.2bit:chrUn_DS484412v1:0-2161.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484412v1:0-2161.chain
zcat psl/dm6.2bit:chrX_DS484411v1_random:0-2161.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484411v1_random:0-2161.chain
zcat psl/dm6.2bit:chrUn_DS484414v1:0-2157.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484414v1:0-2157.chain
zcat psl/dm6.2bit:chrX_DS484415v1_random:0-2147.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484415v1_random:0-2147.chain
zcat psl/dm6.2bit:chrX_DS484417v1_random:0-2139.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484417v1_random:0-2139.chain
zcat psl/dm6.2bit:chrX_DS484419v1_random:0-2132.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484419v1_random:0-2132.chain
zcat psl/dm6.2bit:chrUn_DS484421v1:0-2129.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484421v1:0-2129.chain
zcat psl/dm6.2bit:chrX_DS484423v1_random:0-2126.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484423v1_random:0-2126.chain
zcat psl/dm6.2bit:chrUn_DS484424v1:0-2124.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484424v1:0-2124.chain
zcat psl/dm6.2bit:chrUn_DS484425v1:0-2124.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484425v1:0-2124.chain
zcat psl/dm6.2bit:chrUn_DS484426v1:0-2119.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484426v1:0-2119.chain
zcat psl/dm6.2bit:chrUn_DS484427v1:0-2117.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484427v1:0-2117.chain
zcat psl/dm6.2bit:chrX_DS484428v1_random:0-2114.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484428v1_random:0-2114.chain
zcat psl/dm6.2bit:chrX_DS484429v1_random:0-2113.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484429v1_random:0-2113.chain
zcat psl/dm6.2bit:chrX_DS484431v1_random:0-2113.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484431v1_random:0-2113.chain
zcat psl/dm6.2bit:chrX_DS484430v1_random:0-2113.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484430v1_random:0-2113.chain
zcat psl/dm6.2bit:chrUn_DS484432v1:0-2112.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484432v1:0-2112.chain
zcat psl/dm6.2bit:chrX_DS484433v1_random:0-2109.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484433v1_random:0-2109.chain
zcat psl/dm6.2bit:chrUn_DS484434v1:0-2108.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484434v1:0-2108.chain
zcat psl/dm6.2bit:chrUn_DS484435v1:0-2105.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484435v1:0-2105.chain
zcat psl/dm6.2bit:chrUn_DS484436v1:0-2105.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484436v1:0-2105.chain
zcat psl/dm6.2bit:chrUn_DS484437v1:0-2103.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484437v1:0-2103.chain
zcat psl/dm6.2bit:chrUn_DS484438v1:0-2102.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484438v1:0-2102.chain
zcat psl/dm6.2bit:chrY_DS484441v1_random:0-2096.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484441v1_random:0-2096.chain
zcat psl/dm6.2bit:chrX_DS484442v1_random:0-2096.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484442v1_random:0-2096.chain
zcat psl/dm6.2bit:chrUn_DS484443v1:0-2094.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484443v1:0-2094.chain
zcat psl/dm6.2bit:chrX_DS484444v1_random:0-2094.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484444v1_random:0-2094.chain
zcat psl/dm6.2bit:chrUn_DS484445v1:0-2092.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484445v1:0-2092.chain
zcat psl/dm6.2bit:chrUn_DS484446v1:0-2090.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484446v1:0-2090.chain
zcat psl/dm6.2bit:chrX_DS484447v1_random:0-2089.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484447v1_random:0-2089.chain
zcat psl/dm6.2bit:chrUn_DS484448v1:0-2088.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484448v1:0-2088.chain
zcat psl/dm6.2bit:chrX_DS484450v1_random:0-2087.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484450v1_random:0-2087.chain
zcat psl/dm6.2bit:chrUn_DS484449v1:0-2087.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484449v1:0-2087.chain
zcat psl/dm6.2bit:chrUn_DS484452v1:0-2086.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484452v1:0-2086.chain
zcat psl/dm6.2bit:chrUn_DS484454v1:0-2084.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484454v1:0-2084.chain
zcat psl/dm6.2bit:chrUn_DS484456v1:0-2081.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484456v1:0-2081.chain
zcat psl/dm6.2bit:chrUn_DS484458v1:0-2079.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484458v1:0-2079.chain
zcat psl/dm6.2bit:chrX_DS484457v1_random:0-2079.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484457v1_random:0-2079.chain
zcat psl/dm6.2bit:chrX_DS484459v1_random:0-2078.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484459v1_random:0-2078.chain
zcat psl/dm6.2bit:chrUn_DS484460v1:0-2076.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484460v1:0-2076.chain
zcat psl/dm6.2bit:chrX_DS484462v1_random:0-2068.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484462v1_random:0-2068.chain
zcat psl/dm6.2bit:chrUn_DS484463v1:0-2064.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484463v1:0-2064.chain
zcat psl/dm6.2bit:chrY_DS484465v1_random:0-2063.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484465v1_random:0-2063.chain
zcat psl/dm6.2bit:chrUn_DS484464v1:0-2063.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484464v1:0-2063.chain
zcat psl/dm6.2bit:chrUn_DS484466v1:0-2062.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484466v1:0-2062.chain
zcat psl/dm6.2bit:chrX_DS484468v1_random:0-2060.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484468v1_random:0-2060.chain
zcat psl/dm6.2bit:chrUn_DS484469v1:0-2060.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484469v1:0-2060.chain
zcat psl/dm6.2bit:chrUn_DS484467v1:0-2060.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484467v1:0-2060.chain
zcat psl/dm6.2bit:chrUn_DS484470v1:0-2059.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484470v1:0-2059.chain
zcat psl/dm6.2bit:chrUn_DS484471v1:0-2050.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484471v1:0-2050.chain
zcat psl/dm6.2bit:chrUn_DS484472v1:0-2046.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484472v1:0-2046.chain
zcat psl/dm6.2bit:chrX_DS484474v1_random:0-2044.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484474v1_random:0-2044.chain
zcat psl/dm6.2bit:chrUn_DS484475v1:0-2043.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484475v1:0-2043.chain
zcat psl/dm6.2bit:chrX_DS484477v1_random:0-2035.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484477v1_random:0-2035.chain
zcat psl/dm6.2bit:chrUn_DS484479v1:0-2033.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484479v1:0-2033.chain
zcat psl/dm6.2bit:chrUn_DS484478v1:0-2033.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484478v1:0-2033.chain
zcat psl/dm6.2bit:chrUn_DS484480v1:0-2030.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484480v1:0-2030.chain
zcat psl/dm6.2bit:chrUn_DS484481v1:0-2027.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484481v1:0-2027.chain
zcat psl/dm6.2bit:chrX_DS484483v1_random:0-2021.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484483v1_random:0-2021.chain
zcat psl/dm6.2bit:chrUn_DS484484v1:0-2020.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484484v1:0-2020.chain
zcat psl/dm6.2bit:chrUn_DS484485v1:0-2017.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484485v1:0-2017.chain
zcat psl/dm6.2bit:chrUn_DS484486v1:0-2014.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484486v1:0-2014.chain
zcat psl/dm6.2bit:chrUn_DS484487v1:0-2010.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484487v1:0-2010.chain
zcat psl/dm6.2bit:chrX_DS484488v1_random:0-2009.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484488v1_random:0-2009.chain
zcat psl/dm6.2bit:chrUn_DS484489v1:0-2008.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484489v1:0-2008.chain
zcat psl/dm6.2bit:chrUn_DS484491v1:0-2006.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484491v1:0-2006.chain
zcat psl/dm6.2bit:chrUn_DS484490v1:0-2006.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484490v1:0-2006.chain
zcat psl/dm6.2bit:chrY_DS484492v1_random:0-2005.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484492v1_random:0-2005.chain
zcat psl/dm6.2bit:chrUn_DS484493v1:0-2005.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484493v1:0-2005.chain
zcat psl/dm6.2bit:chrUn_DS484498v1:0-1998.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484498v1:0-1998.chain
zcat psl/dm6.2bit:chrX_DS484497v1_random:0-1998.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484497v1_random:0-1998.chain
zcat psl/dm6.2bit:chrUn_DS484496v1:0-1998.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484496v1:0-1998.chain
zcat psl/dm6.2bit:chrUn_DS484499v1:0-1995.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484499v1:0-1995.chain
zcat psl/dm6.2bit:chrX_DS484500v1_random:0-1993.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484500v1_random:0-1993.chain
zcat psl/dm6.2bit:chrUn_DS484502v1:0-1990.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484502v1:0-1990.chain
zcat psl/dm6.2bit:chrUn_DS484501v1:0-1990.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484501v1:0-1990.chain
zcat psl/dm6.2bit:chrUn_DS484503v1:0-1988.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484503v1:0-1988.chain
zcat psl/dm6.2bit:chrX_DS484504v1_random:0-1986.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484504v1_random:0-1986.chain
zcat psl/dm6.2bit:chrUn_DS484505v1:0-1986.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484505v1:0-1986.chain
zcat psl/dm6.2bit:chrX_DS484506v1_random:0-1980.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484506v1_random:0-1980.chain
zcat psl/dm6.2bit:chrX_DS484507v1_random:0-1978.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484507v1_random:0-1978.chain
zcat psl/dm6.2bit:chrUn_DS484508v1:0-1976.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484508v1:0-1976.chain
zcat psl/dm6.2bit:chrUn_DS484509v1:0-1976.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484509v1:0-1976.chain
zcat psl/dm6.2bit:chrUn_DS484510v1:0-1975.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484510v1:0-1975.chain
zcat psl/dm6.2bit:chrUn_DS484511v1:0-1974.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484511v1:0-1974.chain
zcat psl/dm6.2bit:chrX_DS484512v1_random:0-1970.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484512v1_random:0-1970.chain
zcat psl/dm6.2bit:chrUn_DS484514v1:0-1966.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484514v1:0-1966.chain
zcat psl/dm6.2bit:chrUn_DS484515v1:0-1966.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484515v1:0-1966.chain
zcat psl/dm6.2bit:chrUn_DS484513v1:0-1966.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484513v1:0-1966.chain
zcat psl/dm6.2bit:chrX_DS484518v1_random:0-1964.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484518v1_random:0-1964.chain
zcat psl/dm6.2bit:chrX_DS484519v1_random:0-1963.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484519v1_random:0-1963.chain
zcat psl/dm6.2bit:chrUn_DS484520v1:0-1962.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484520v1:0-1962.chain
zcat psl/dm6.2bit:chrUn_DS484522v1:0-1962.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484522v1:0-1962.chain
zcat psl/dm6.2bit:chrUn_DS484521v1:0-1962.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484521v1:0-1962.chain
zcat psl/dm6.2bit:chrY_DS484523v1_random:0-1961.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484523v1_random:0-1961.chain
zcat psl/dm6.2bit:chrUn_DS484524v1:0-1961.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484524v1:0-1961.chain
zcat psl/dm6.2bit:chrUn_DS484525v1:0-1961.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484525v1:0-1961.chain
zcat psl/dm6.2bit:chrX_DS484526v1_random:0-1956.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484526v1_random:0-1956.chain
zcat psl/dm6.2bit:chrUn_DS484527v1:0-1956.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484527v1:0-1956.chain
zcat psl/dm6.2bit:chrX_DS484529v1_random:0-1947.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484529v1_random:0-1947.chain
zcat psl/dm6.2bit:chrUn_DS484528v1:0-1947.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484528v1:0-1947.chain
zcat psl/dm6.2bit:chrY_DS484530v1_random:0-1947.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484530v1_random:0-1947.chain
zcat psl/dm6.2bit:chrY_DS484531v1_random:0-1946.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484531v1_random:0-1946.chain
zcat psl/dm6.2bit:chrUn_DS484532v1:0-1945.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484532v1:0-1945.chain
zcat psl/dm6.2bit:chrX_DS484533v1_random:0-1944.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484533v1_random:0-1944.chain
zcat psl/dm6.2bit:chrUn_DS484534v1:0-1943.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484534v1:0-1943.chain
zcat psl/dm6.2bit:chrX_DS484535v1_random:0-1939.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484535v1_random:0-1939.chain
zcat psl/dm6.2bit:chrUn_DS484539v1:0-1936.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484539v1:0-1936.chain
zcat psl/dm6.2bit:chrX_DS484538v1_random:0-1936.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484538v1_random:0-1936.chain
zcat psl/dm6.2bit:chrX_DS484540v1_random:0-1935.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484540v1_random:0-1935.chain
zcat psl/dm6.2bit:chrUn_DS484542v1:0-1933.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484542v1:0-1933.chain
zcat psl/dm6.2bit:chrX_DS484541v1_random:0-1933.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484541v1_random:0-1933.chain
zcat psl/dm6.2bit:chrUn_DS484543v1:0-1931.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484543v1:0-1931.chain
zcat psl/dm6.2bit:chrUn_DS484544v1:0-1929.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484544v1:0-1929.chain
zcat psl/dm6.2bit:chrUn_DS484546v1:0-1928.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484546v1:0-1928.chain
zcat psl/dm6.2bit:chrX_DS484545v1_random:0-1928.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484545v1_random:0-1928.chain
zcat psl/dm6.2bit:chrX_DS484547v1_random:0-1927.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484547v1_random:0-1927.chain
zcat psl/dm6.2bit:chrUn_DS484549v1:0-1926.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484549v1:0-1926.chain
zcat psl/dm6.2bit:chrUn_DS484548v1:0-1926.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484548v1:0-1926.chain
zcat psl/dm6.2bit:chrUn_DS484550v1:0-1924.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484550v1:0-1924.chain
zcat psl/dm6.2bit:chrX_DS484552v1_random:0-1920.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484552v1_random:0-1920.chain
zcat psl/dm6.2bit:chrUn_DS484553v1:0-1917.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484553v1:0-1917.chain
zcat psl/dm6.2bit:chrX_DS484555v1_random:0-1916.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484555v1_random:0-1916.chain
zcat psl/dm6.2bit:chrX_DS484556v1_random:0-1916.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484556v1_random:0-1916.chain
zcat psl/dm6.2bit:chrUn_DS484557v1:0-1907.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484557v1:0-1907.chain
zcat psl/dm6.2bit:chrX_DS484558v1_random:0-1906.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484558v1_random:0-1906.chain
zcat psl/dm6.2bit:chrUn_DS484559v1:0-1905.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484559v1:0-1905.chain
zcat psl/dm6.2bit:chrX_DS484560v1_random:0-1904.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484560v1_random:0-1904.chain
zcat psl/dm6.2bit:chrUn_DS484561v1:0-1903.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484561v1:0-1903.chain
zcat psl/dm6.2bit:chrX_DS484563v1_random:0-1903.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484563v1_random:0-1903.chain
zcat psl/dm6.2bit:chrX_DS484562v1_random:0-1903.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484562v1_random:0-1903.chain
zcat psl/dm6.2bit:chrX_DS484564v1_random:0-1902.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484564v1_random:0-1902.chain
zcat psl/dm6.2bit:chrUn_DS484565v1:0-1901.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484565v1:0-1901.chain
zcat psl/dm6.2bit:chrUn_DS484566v1:0-1900.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484566v1:0-1900.chain
zcat psl/dm6.2bit:chrUn_DS484567v1:0-1900.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484567v1:0-1900.chain
zcat psl/dm6.2bit:chrX_DS484568v1_random:0-1899.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484568v1_random:0-1899.chain
zcat psl/dm6.2bit:chrX_DS484569v1_random:0-1895.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484569v1_random:0-1895.chain
zcat psl/dm6.2bit:chrX_DS484570v1_random:0-1895.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484570v1_random:0-1895.chain
zcat psl/dm6.2bit:chrUn_DS484571v1:0-1893.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484571v1:0-1893.chain
zcat psl/dm6.2bit:chrX_DS484572v1_random:0-1891.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484572v1_random:0-1891.chain
zcat psl/dm6.2bit:chrUn_DS484573v1:0-1890.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484573v1:0-1890.chain
zcat psl/dm6.2bit:chrY_DS484574v1_random:0-1890.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484574v1_random:0-1890.chain
zcat psl/dm6.2bit:chrX_DS484576v1_random:0-1888.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484576v1_random:0-1888.chain
zcat psl/dm6.2bit:chrUn_DS484577v1:0-1882.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484577v1:0-1882.chain
zcat psl/dm6.2bit:chrUn_DS484579v1:0-1872.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484579v1:0-1872.chain
zcat psl/dm6.2bit:chrUn_DS484578v1:0-1872.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484578v1:0-1872.chain
zcat psl/dm6.2bit:chrX_DS484580v1_random:0-1871.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484580v1_random:0-1871.chain
zcat psl/dm6.2bit:chrUn_DS484581v1:0-1870.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484581v1:0-1870.chain
zcat psl/dm6.2bit:chrX_DS484582v1_random:0-1870.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484582v1_random:0-1870.chain
zcat psl/dm6.2bit:chrX_DS484585v1_random:0-1869.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484585v1_random:0-1869.chain
zcat psl/dm6.2bit:chrX_DS484583v1_random:0-1869.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484583v1_random:0-1869.chain
zcat psl/dm6.2bit:chrUn_DS484584v1:0-1869.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484584v1:0-1869.chain
zcat psl/dm6.2bit:chrX_DS484586v1_random:0-1868.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484586v1_random:0-1868.chain
zcat psl/dm6.2bit:chrX_DS484587v1_random:0-1865.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484587v1_random:0-1865.chain
zcat psl/dm6.2bit:chrUn_DS484588v1:0-1863.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484588v1:0-1863.chain
zcat psl/dm6.2bit:chrY_DS484589v1_random:0-1863.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484589v1_random:0-1863.chain
zcat psl/dm6.2bit:chrX_DS484590v1_random:0-1856.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484590v1_random:0-1856.chain
zcat psl/dm6.2bit:chrUn_DS484591v1:0-1854.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484591v1:0-1854.chain
zcat psl/dm6.2bit:chrUn_DS484592v1:0-1851.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484592v1:0-1851.chain
zcat psl/dm6.2bit:chrUn_DS484593v1:0-1849.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484593v1:0-1849.chain
zcat psl/dm6.2bit:chrX_DS484594v1_random:0-1843.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484594v1_random:0-1843.chain
zcat psl/dm6.2bit:chrX_DS484596v1_random:0-1843.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484596v1_random:0-1843.chain
zcat psl/dm6.2bit:chrUn_DS484595v1:0-1843.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484595v1:0-1843.chain
zcat psl/dm6.2bit:chrX_DS484597v1_random:0-1843.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484597v1_random:0-1843.chain
zcat psl/dm6.2bit:chrX_DS484598v1_random:0-1842.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484598v1_random:0-1842.chain
zcat psl/dm6.2bit:chrX_DS484600v1_random:0-1841.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484600v1_random:0-1841.chain
zcat psl/dm6.2bit:chrX_DS484599v1_random:0-1841.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484599v1_random:0-1841.chain
zcat psl/dm6.2bit:chrUn_DS484601v1:0-1832.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484601v1:0-1832.chain
zcat psl/dm6.2bit:chrUn_DS484602v1:0-1832.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484602v1:0-1832.chain
zcat psl/dm6.2bit:chrX_DS484603v1_random:0-1830.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484603v1_random:0-1830.chain
zcat psl/dm6.2bit:chrX_DS484605v1_random:0-1829.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484605v1_random:0-1829.chain
zcat psl/dm6.2bit:chrX_DS484604v1_random:0-1829.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484604v1_random:0-1829.chain
zcat psl/dm6.2bit:chrUn_DS484606v1:0-1826.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484606v1:0-1826.chain
zcat psl/dm6.2bit:chrUn_DS484607v1:0-1819.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484607v1:0-1819.chain
zcat psl/dm6.2bit:chrX_DS484609v1_random:0-1818.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484609v1_random:0-1818.chain
zcat psl/dm6.2bit:chrX_DS484608v1_random:0-1818.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484608v1_random:0-1818.chain
zcat psl/dm6.2bit:chrX_DS484611v1_random:0-1813.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484611v1_random:0-1813.chain
zcat psl/dm6.2bit:chrX_DS484610v1_random:0-1813.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484610v1_random:0-1813.chain
zcat psl/dm6.2bit:chrUn_DS484614v1:0-1806.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484614v1:0-1806.chain
zcat psl/dm6.2bit:chrX_DS484615v1_random:0-1803.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484615v1_random:0-1803.chain
zcat psl/dm6.2bit:chrUn_DS484616v1:0-1802.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484616v1:0-1802.chain
zcat psl/dm6.2bit:chrUn_DS484617v1:0-1801.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484617v1:0-1801.chain
zcat psl/dm6.2bit:chrUn_DS484619v1:0-1800.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484619v1:0-1800.chain
zcat psl/dm6.2bit:chrX_DS484618v1_random:0-1800.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484618v1_random:0-1800.chain
zcat psl/dm6.2bit:chrX_DS484620v1_random:0-1798.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484620v1_random:0-1798.chain
zcat psl/dm6.2bit:chrUn_DS484621v1:0-1797.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484621v1:0-1797.chain
zcat psl/dm6.2bit:chrX_DS484622v1_random:0-1793.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484622v1_random:0-1793.chain
zcat psl/dm6.2bit:chrX_DS484623v1_random:0-1792.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484623v1_random:0-1792.chain
zcat psl/dm6.2bit:chrX_DS484625v1_random:0-1787.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484625v1_random:0-1787.chain
zcat psl/dm6.2bit:chrX_DS484626v1_random:0-1786.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484626v1_random:0-1786.chain
zcat psl/dm6.2bit:chrX_DS484628v1_random:0-1785.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484628v1_random:0-1785.chain
zcat psl/dm6.2bit:chrUn_DS484629v1:0-1785.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484629v1:0-1785.chain
zcat psl/dm6.2bit:chrUn_DS484630v1:0-1776.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484630v1:0-1776.chain
zcat psl/dm6.2bit:chrX_DS484633v1_random:0-1775.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484633v1_random:0-1775.chain
zcat psl/dm6.2bit:chrY_DS484631v1_random:0-1775.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484631v1_random:0-1775.chain
zcat psl/dm6.2bit:chrUn_DS484632v1:0-1775.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484632v1:0-1775.chain
zcat psl/dm6.2bit:chrUn_DS484635v1:0-1770.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484635v1:0-1770.chain
zcat psl/dm6.2bit:chrX_DS484636v1_random:0-1769.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484636v1_random:0-1769.chain
zcat psl/dm6.2bit:chrY_DS484637v1_random:0-1766.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484637v1_random:0-1766.chain
zcat psl/dm6.2bit:chrUn_DS484639v1:0-1761.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484639v1:0-1761.chain
zcat psl/dm6.2bit:chrY_DS484641v1_random:0-1756.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484641v1_random:0-1756.chain
zcat psl/dm6.2bit:chrUn_DS484642v1:0-1754.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484642v1:0-1754.chain
zcat psl/dm6.2bit:chrY_DS484643v1_random:0-1751.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484643v1_random:0-1751.chain
zcat psl/dm6.2bit:chrUn_DS484646v1:0-1747.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484646v1:0-1747.chain
zcat psl/dm6.2bit:chrX_DS484644v1_random:0-1747.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484644v1_random:0-1747.chain
zcat psl/dm6.2bit:chrX_DS484645v1_random:0-1747.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484645v1_random:0-1747.chain
zcat psl/dm6.2bit:chrX_DS484647v1_random:0-1743.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484647v1_random:0-1743.chain
zcat psl/dm6.2bit:chrX_DS484648v1_random:0-1741.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484648v1_random:0-1741.chain
zcat psl/dm6.2bit:chrUn_DS484649v1:0-1738.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484649v1:0-1738.chain
zcat psl/dm6.2bit:chrX_DS484650v1_random:0-1737.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484650v1_random:0-1737.chain
zcat psl/dm6.2bit:chrUn_DS484651v1:0-1734.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484651v1:0-1734.chain
zcat psl/dm6.2bit:chrUn_DS484652v1:0-1733.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484652v1:0-1733.chain
zcat psl/dm6.2bit:chrUn_DS484653v1:0-1732.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484653v1:0-1732.chain
zcat psl/dm6.2bit:chrUn_DS484654v1:0-1728.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484654v1:0-1728.chain
zcat psl/dm6.2bit:chrX_DS484657v1_random:0-1724.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484657v1_random:0-1724.chain
zcat psl/dm6.2bit:chrUn_DS484656v1:0-1724.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484656v1:0-1724.chain
zcat psl/dm6.2bit:chrUn_DS484659v1:0-1719.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484659v1:0-1719.chain
zcat psl/dm6.2bit:chrUn_DS484658v1:0-1719.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484658v1:0-1719.chain
zcat psl/dm6.2bit:chrX_DS484660v1_random:0-1716.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484660v1_random:0-1716.chain
zcat psl/dm6.2bit:chrUn_DS484661v1:0-1716.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484661v1:0-1716.chain
zcat psl/dm6.2bit:chrUn_DS484662v1:0-1715.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484662v1:0-1715.chain
zcat psl/dm6.2bit:chrUn_DS484663v1:0-1714.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484663v1:0-1714.chain
zcat psl/dm6.2bit:chrX_DS484664v1_random:0-1713.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484664v1_random:0-1713.chain
zcat psl/dm6.2bit:chrY_DS484665v1_random:0-1712.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484665v1_random:0-1712.chain
zcat psl/dm6.2bit:chrX_DS484666v1_random:0-1710.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484666v1_random:0-1710.chain
zcat psl/dm6.2bit:chrUn_DS484667v1:0-1710.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484667v1:0-1710.chain
zcat psl/dm6.2bit:chrX_DS484668v1_random:0-1709.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484668v1_random:0-1709.chain
zcat psl/dm6.2bit:chrX_DS484669v1_random:0-1708.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484669v1_random:0-1708.chain
zcat psl/dm6.2bit:chrX_DS484670v1_random:0-1704.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484670v1_random:0-1704.chain
zcat psl/dm6.2bit:chrX_DS484672v1_random:0-1703.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484672v1_random:0-1703.chain
zcat psl/dm6.2bit:chrUn_DS484671v1:0-1703.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484671v1:0-1703.chain
zcat psl/dm6.2bit:chrUn_DS484673v1:0-1696.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484673v1:0-1696.chain
zcat psl/dm6.2bit:chrY_DS484674v1_random:0-1690.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484674v1_random:0-1690.chain
zcat psl/dm6.2bit:chrY_DS484675v1_random:0-1690.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484675v1_random:0-1690.chain
zcat psl/dm6.2bit:chrX_DS484677v1_random:0-1687.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484677v1_random:0-1687.chain
zcat psl/dm6.2bit:chrUn_DS484678v1:0-1685.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484678v1:0-1685.chain
zcat psl/dm6.2bit:chrY_DS484681v1_random:0-1683.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484681v1_random:0-1683.chain
zcat psl/dm6.2bit:chrY_DS484680v1_random:0-1683.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484680v1_random:0-1683.chain
zcat psl/dm6.2bit:chrX_DS484679v1_random:0-1683.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484679v1_random:0-1683.chain
zcat psl/dm6.2bit:chrX_DS484682v1_random:0-1680.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484682v1_random:0-1680.chain
zcat psl/dm6.2bit:chrX_DS484683v1_random:0-1679.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484683v1_random:0-1679.chain
zcat psl/dm6.2bit:chrX_DS484684v1_random:0-1678.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484684v1_random:0-1678.chain
zcat psl/dm6.2bit:chrUn_DS484685v1:0-1675.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484685v1:0-1675.chain
zcat psl/dm6.2bit:chrUn_DS484686v1:0-1667.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484686v1:0-1667.chain
zcat psl/dm6.2bit:chrX_DS484688v1_random:0-1657.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484688v1_random:0-1657.chain
zcat psl/dm6.2bit:chrUn_DS484689v1:0-1650.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484689v1:0-1650.chain
zcat psl/dm6.2bit:chrX_DS484690v1_random:0-1645.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484690v1_random:0-1645.chain
zcat psl/dm6.2bit:chrUn_DS484692v1:0-1643.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484692v1:0-1643.chain
zcat psl/dm6.2bit:chrX_DS484691v1_random:0-1643.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484691v1_random:0-1643.chain
zcat psl/dm6.2bit:chrUn_DS484693v1:0-1641.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484693v1:0-1641.chain
zcat psl/dm6.2bit:chrX_DS484694v1_random:0-1637.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484694v1_random:0-1637.chain
zcat psl/dm6.2bit:chrX_DS484695v1_random:0-1637.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484695v1_random:0-1637.chain
zcat psl/dm6.2bit:chrY_DS484696v1_random:0-1637.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484696v1_random:0-1637.chain
zcat psl/dm6.2bit:chrX_DS484697v1_random:0-1636.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484697v1_random:0-1636.chain
zcat psl/dm6.2bit:chrX_DS484698v1_random:0-1630.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484698v1_random:0-1630.chain
zcat psl/dm6.2bit:chrUn_DS484699v1:0-1629.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484699v1:0-1629.chain
zcat psl/dm6.2bit:chrX_DS484701v1_random:0-1625.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484701v1_random:0-1625.chain
zcat psl/dm6.2bit:chrUn_DS484700v1:0-1625.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484700v1:0-1625.chain
zcat psl/dm6.2bit:chrX_DS484702v1_random:0-1623.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484702v1_random:0-1623.chain
zcat psl/dm6.2bit:chrX_DS484703v1_random:0-1622.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484703v1_random:0-1622.chain
zcat psl/dm6.2bit:chrY_DS484706v1_random:0-1619.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484706v1_random:0-1619.chain
zcat psl/dm6.2bit:chrUn_DS484707v1:0-1614.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484707v1:0-1614.chain
zcat psl/dm6.2bit:chrUn_DS484709v1:0-1611.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484709v1:0-1611.chain
zcat psl/dm6.2bit:chrUn_DS484710v1:0-1610.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484710v1:0-1610.chain
zcat psl/dm6.2bit:chrUn_DS484712v1:0-1610.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484712v1:0-1610.chain
zcat psl/dm6.2bit:chrUn_DS484713v1:0-1608.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484713v1:0-1608.chain
zcat psl/dm6.2bit:chrUn_DS484714v1:0-1597.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484714v1:0-1597.chain
zcat psl/dm6.2bit:chrX_DS484715v1_random:0-1595.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484715v1_random:0-1595.chain
zcat psl/dm6.2bit:chrUn_DS484716v1:0-1594.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484716v1:0-1594.chain
zcat psl/dm6.2bit:chrUn_DS484718v1:0-1586.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484718v1:0-1586.chain
zcat psl/dm6.2bit:chrX_DS484719v1_random:0-1586.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484719v1_random:0-1586.chain
zcat psl/dm6.2bit:chrUn_DS484720v1:0-1586.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484720v1:0-1586.chain
zcat psl/dm6.2bit:chrUn_DS484721v1:0-1581.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484721v1:0-1581.chain
zcat psl/dm6.2bit:chrX_DS484723v1_random:0-1577.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484723v1_random:0-1577.chain
zcat psl/dm6.2bit:chrUn_DS484722v1:0-1577.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484722v1:0-1577.chain
zcat psl/dm6.2bit:chrX_DS484724v1_random:0-1575.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484724v1_random:0-1575.chain
zcat psl/dm6.2bit:chrX_DS484725v1_random:0-1573.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484725v1_random:0-1573.chain
zcat psl/dm6.2bit:chrUn_DS484726v1:0-1571.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484726v1:0-1571.chain
zcat psl/dm6.2bit:chrUn_DS484727v1:0-1567.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484727v1:0-1567.chain
zcat psl/dm6.2bit:chrUn_DS484728v1:0-1566.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484728v1:0-1566.chain
zcat psl/dm6.2bit:chrX_DS484730v1_random:0-1560.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484730v1_random:0-1560.chain
zcat psl/dm6.2bit:chrUn_DS484729v1:0-1560.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484729v1:0-1560.chain
zcat psl/dm6.2bit:chrX_DS484731v1_random:0-1558.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484731v1_random:0-1558.chain
zcat psl/dm6.2bit:chrX_DS484732v1_random:0-1556.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484732v1_random:0-1556.chain
zcat psl/dm6.2bit:chrX_DS484733v1_random:0-1556.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484733v1_random:0-1556.chain
zcat psl/dm6.2bit:chrUn_DS484734v1:0-1555.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484734v1:0-1555.chain
zcat psl/dm6.2bit:chrUn_DS484735v1:0-1553.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484735v1:0-1553.chain
zcat psl/dm6.2bit:chrUn_DS484736v1:0-1552.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484736v1:0-1552.chain
zcat psl/dm6.2bit:chrX_DS484737v1_random:0-1550.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484737v1_random:0-1550.chain
zcat psl/dm6.2bit:chrUn_DS484738v1:0-1550.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484738v1:0-1550.chain
zcat psl/dm6.2bit:chrUn_DS484739v1:0-1549.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484739v1:0-1549.chain
zcat psl/dm6.2bit:chrX_DS484740v1_random:0-1546.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484740v1_random:0-1546.chain
zcat psl/dm6.2bit:chrX_DS484741v1_random:0-1544.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484741v1_random:0-1544.chain
zcat psl/dm6.2bit:chrUn_DS484742v1:0-1543.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484742v1:0-1543.chain
zcat psl/dm6.2bit:chrX_DS484745v1_random:0-1541.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484745v1_random:0-1541.chain
zcat psl/dm6.2bit:chrUn_DS484746v1:0-1540.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484746v1:0-1540.chain
zcat psl/dm6.2bit:chrUn_DS484748v1:0-1538.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484748v1:0-1538.chain
zcat psl/dm6.2bit:chrX_DS484749v1_random:0-1534.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484749v1_random:0-1534.chain
zcat psl/dm6.2bit:chrUn_DS484750v1:0-1533.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484750v1:0-1533.chain
zcat psl/dm6.2bit:chrUn_DS484751v1:0-1533.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484751v1:0-1533.chain
zcat psl/dm6.2bit:chrUn_DS484752v1:0-1532.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484752v1:0-1532.chain
zcat psl/dm6.2bit:chrX_DS484753v1_random:0-1529.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484753v1_random:0-1529.chain
zcat psl/dm6.2bit:chrUn_DS484754v1:0-1527.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484754v1:0-1527.chain
zcat psl/dm6.2bit:chrUn_DS484756v1:0-1525.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484756v1:0-1525.chain
zcat psl/dm6.2bit:chrX_DS484758v1_random:0-1525.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484758v1_random:0-1525.chain
zcat psl/dm6.2bit:chrY_DS484757v1_random:0-1525.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484757v1_random:0-1525.chain
zcat psl/dm6.2bit:chrUn_DS484760v1:0-1521.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484760v1:0-1521.chain
zcat psl/dm6.2bit:chrUn_DS484762v1:0-1520.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484762v1:0-1520.chain
zcat psl/dm6.2bit:chrX_DS484763v1_random:0-1519.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484763v1_random:0-1519.chain
zcat psl/dm6.2bit:chrUn_DS484764v1:0-1518.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484764v1:0-1518.chain
zcat psl/dm6.2bit:chrX_DS484765v1_random:0-1516.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484765v1_random:0-1516.chain
zcat psl/dm6.2bit:chrX_DS484767v1_random:0-1510.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484767v1_random:0-1510.chain
zcat psl/dm6.2bit:chrX_DS484768v1_random:0-1509.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484768v1_random:0-1509.chain
zcat psl/dm6.2bit:chrUn_DS484769v1:0-1508.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484769v1:0-1508.chain
zcat psl/dm6.2bit:chrUn_DS484771v1:0-1504.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484771v1:0-1504.chain
zcat psl/dm6.2bit:chrUn_DS484770v1:0-1504.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484770v1:0-1504.chain
zcat psl/dm6.2bit:chrUn_DS484772v1:0-1502.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484772v1:0-1502.chain
zcat psl/dm6.2bit:chrUn_DS484773v1:0-1494.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484773v1:0-1494.chain
zcat psl/dm6.2bit:chrX_DS484775v1_random:0-1492.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484775v1_random:0-1492.chain
zcat psl/dm6.2bit:chrUn_DS484774v1:0-1492.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484774v1:0-1492.chain
zcat psl/dm6.2bit:chrUn_DS484776v1:0-1490.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484776v1:0-1490.chain
zcat psl/dm6.2bit:chrX_DS484777v1_random:0-1489.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484777v1_random:0-1489.chain
zcat psl/dm6.2bit:chrX_DS484778v1_random:0-1488.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484778v1_random:0-1488.chain
zcat psl/dm6.2bit:chrUn_DS484780v1:0-1487.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484780v1:0-1487.chain
zcat psl/dm6.2bit:chrUn_DS484779v1:0-1487.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484779v1:0-1487.chain
zcat psl/dm6.2bit:chrY_DS484781v1_random:0-1485.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484781v1_random:0-1485.chain
zcat psl/dm6.2bit:chrUn_DS484782v1:0-1484.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484782v1:0-1484.chain
zcat psl/dm6.2bit:chrX_DS484783v1_random:0-1482.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484783v1_random:0-1482.chain
zcat psl/dm6.2bit:chrX_DS484785v1_random:0-1478.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484785v1_random:0-1478.chain
zcat psl/dm6.2bit:chrX_DS484786v1_random:0-1476.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484786v1_random:0-1476.chain
zcat psl/dm6.2bit:chrUn_DS484787v1:0-1475.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484787v1:0-1475.chain
zcat psl/dm6.2bit:chrUn_DS484789v1:0-1473.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484789v1:0-1473.chain
zcat psl/dm6.2bit:chrUn_DS484792v1:0-1471.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484792v1:0-1471.chain
zcat psl/dm6.2bit:chrUn_DS484796v1:0-1468.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484796v1:0-1468.chain
zcat psl/dm6.2bit:chrUn_DS484797v1:0-1467.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484797v1:0-1467.chain
zcat psl/dm6.2bit:chrUn_DS484798v1:0-1466.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484798v1:0-1466.chain
zcat psl/dm6.2bit:chrUn_DS484799v1:0-1464.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484799v1:0-1464.chain
zcat psl/dm6.2bit:chrUn_DS484802v1:0-1462.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484802v1:0-1462.chain
zcat psl/dm6.2bit:chrX_DS484803v1_random:0-1461.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484803v1_random:0-1461.chain
zcat psl/dm6.2bit:chrUn_DS484804v1:0-1461.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484804v1:0-1461.chain
zcat psl/dm6.2bit:chrY_DS484805v1_random:0-1459.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484805v1_random:0-1459.chain
zcat psl/dm6.2bit:chrUn_DS484806v1:0-1458.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrUn_DS484806v1:0-1458.chain
zcat psl/dm6.2bit:chrY_DS484807v1_random:0-1456.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrY_DS484807v1_random:0-1456.chain
zcat psl/dm6.2bit:chrX_DS484809v1_random:0-1453.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484809v1_random:0-1453.chain
zcat psl/dm6.2bit:chrX_DS484810v1_random:0-1452.*.psl.gz \
    | axtChain -psl -verbose=0 -minScore=3000 -linearGap=loose \
	stdin .//dm6.2bit .//ASM438218v1.2bit stdout \
   | chainAntiRepeat .//dm6.2bit .//ASM438218v1.2bit stdin chain/dm6.2bit:chrX_DS484810v1_random:0-1452.chain
find ./chain -name "*.chain" | chainMergeSort -inputList=stdin | gzip -c > dm6.ASM438218v1.all.chain.gz
