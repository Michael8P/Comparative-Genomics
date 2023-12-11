# Background and Strategy Presentation
## Team 2 - 8:33 to 8:55 (22 min)
6 of 6 presenting, no Jay
### General Topics to mention
  1. background, overview, and core concepts
  1. description of tasks, algorithms uses, qualitative comparisons
  1. proposed approach and analysis workflow
  1. task descriptions and delegations

### Results Expected (to plan)
1. predict various aspects of gene (protein) function
1. perform both ab initio and homology-based prediction as appropriate
1. aspects of function to predict – biochemical activity, molecular function,
(sub)cellular localization, domain and motif composition, higher level features
such as protein families or operons, enzymatic activity, virulence factors etc (note
that this list is not exhaustive)

### Deliverables Expected (to plan)
1. deliverable #1 – functional annotation pipeline on GitHub
1. deliverable #2 – TSV listing tool comparisons plus optional figure formats
1. deliverable #3 – GFF files for comparative genomics group
1. deliverable #4 – annotated FastA files for gene nucleotide and protein sequences

### Info Presented
- defined func annot well
- 12 diff annot methods to broadly consider
- PANNZER and Blast2GO give different output formats
- nice diamond vs mmseqs comparison (both good clustering algos)
- operons, 2 dbs to consider
- antibiotic resistance genes, several tools to consider
- plasmid detection tools - 2 tools
- vir factors
- prophage well described integrated into the bacterial genome, HMM searches instead of just local alignments
- TM and OM proteins
- SignalP with and without training model options available
- CRISPR: aragorn and infernal


### Comments and Suggestions
- nice work highlighting the disconnect on databases and algorithms (understanding both guides interpretation) by listing them seperate in several slides!
- Check again on the tools for CRISPR detection, or work the other way and read what aragorn and infernal do instead
- I strongly encourage agreeing on a subset (maybe 5 smallest genome sizes) and set those for an earlier internal team deadline to allow downstream evaluations to happen. If you wait for all 50 genomes to be performed, the downstream work could run out of time if just 1 person was late.
- Work delegation slide was good but 2 big points to discuss in the group:
    1. merging the annotations role is not trivial, so please consider how you'll merge these separate annotation files of a genome into a single GFF, and who will do what portion of those
    1. writing the pipeline assigned to @mpham71 is fine by himself, but it's unreasonable to give him commmands after all 50 genomes are done, so please after the 5 or so subset, include the commands and install for him to get his part going. An earlier internal deadline for this will help ensure this task is complete
