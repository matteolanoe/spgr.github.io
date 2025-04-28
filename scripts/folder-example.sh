#!/usr/bin/env fish

# creates sample folder structure

mkdir replication-package 
cd replication-package
mkdir 1-paper 2-appendices 3-replication-package 4-confidential-data-not-for-publication
# enter some content
mkdir -p 3-replication-package/data/raw
mkdir -p 3-replication-package/data/processed 
mkdir -p 3-replication-package/code/stata 
mkdir -p 3-replication-package/code/R 
mkdir -p 3-replication-package/code/tex 
mkdir -p 3-replication-package/output/tables 
mkdir -p 3-replication-package/output/plots
touch 3-replication-package/README.md
touch 3-replication-package/code/stata/1-main.do
touch 3-replication-package/code/stata/2-read_raw.do
touch 3-replication-package/code/stata/3-figure1.do
touch 3-replication-package/code/stata/4-figure2.do
touch 3-replication-package/code/stata/5-table1.do
touch 3-replication-package/code/R/0-install.R
touch 3-replication-package/code/R/1-main.R
touch 3-replication-package/code/R/2-figure2.R
touch 3-replication-package/code/R/3-table2.R
touch 3-replication-package/code/tex/main.tex
touch 3-replication-package/code/tex/appendix.tex

# change permissions on raw data to read only
chmod 444 3-replication-package/data/raw

# compress
zip -r 3-replication-package.zip 3-replication-package
zip -r 4-confidential-data-not-for-publication.zip 4-confidential-data-not-for-publication

# remove uncompressed folders
# rm -rf 3-replication-package 4-confidential-data-not-for-publication


