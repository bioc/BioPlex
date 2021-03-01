# BioPlex
Analysis of PPI data from Gygi lab

## Installation

Make sure to have the latest release version of 
[R](https://cran.r-project.org/) and 
[Bioconductor](https://bioconductor.org/install/) installed.

Then proceed from within R via:

```
BiocManager::install("ccb-hms/BioPlex", 
                     build_vignettes = TRUE,
                     auth_token = <your_auth_token>)
```

NOTE: you will need the `remotes` package to install from github. 
You will also need to provide the `auth_token` argument to 
`remotes::install_github` as the repo is private.        

Once you have the package installed, you can inspect the vignettes via:

```
browseVignettes("BioPlex")
```

## CORUM

See [here](https://github.com/ccb-hms/BioPlex/blob/0ca36e34957a4e7b0d34ee66915e5f4e5989cee4/vignettes/BioPlex.Rmd#L16) for how to access the CORUM protein complex data from within the package.

## 293T transcriptome data

### GSE122425 

#### Alignment with STAR

O2 project directory for code and data:

`/n/shared_db/ccb/bioplex`

The fastq files for SRP168405 were aligned with STAR and the following human genome:

`/n/groups/shared_databases/star_reference/hg19.genes.gtf
/n/groups/shared_databases/genomes/hg19.fa`

Alignment bam files are here: 

`/n/shared_db/ccb/bioplex/data/2_alignment/bam`

Samples GSM3466389, GSM3466390, GSM3466391 are wild-type, while samples GSM3466392, GSM3466393 and GSM3466394 are the NSUN2 knockouts.

STAR was run with default thresholds. Input parameters can be viewed here: 

`/n/shared_db/ccb/bioplex/code/2_alignment/2_align.sh`

The STAR genome index is saved in our group folder: 

`/n/shared_db/ccb/ref/star_indices/hg19`

Each sample's fastq file was ~30 GB, and each alignment took ~15 minutes of wall time and 30 GB of RAM, running with 16 threads on O2.

