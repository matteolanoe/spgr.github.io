#!/usr/bin/env fish

# creates sample folder structure

mkdir replication-package
cd replication-package
mkdir 1-paper 2-appendices 3-replication-package 4-confidential-data-not-for-publication
# enter some content
touch 3-replication-package/readme.do
touch 3-replication-package/20220120ext_2v1.do
touch 3-replication-package/20211107ext_2v1.do
touch 3-replication-package/wave1.dta
touch 3-replication-package/wave2.dta
touch 3-replication-package/wave2regs.dta
touch 3-replication-package/wave2regs2.dta
touch 3-replication-package/20221101wave1.dta
touch 3-replication-package/20211107ext_2v1.do
touch 3-replication-package/20211107ext_2v1.do
touch 3-replication-package/ts.eps
touch 3-replication-package/scatter1.eps
touch 3-replication-package/scatter1_1.eps
touch 3-replication-package/scatter1_2.eps
touch 3-replication-package/20211107ext_2v1.do
mkdir -p 3-replication-package/james
mkdir -p 3-replication-package/james/NLSY97
mkdir -p 3-replication-package/mary/NLSY97
mkdir -p 3-replication-package/matlab_fortran/graphs
mkdir -p 3-replication-package/matlab_fortran/sensitivity1
mkdir -p 3-replication-package/matlab_fortran/sensitivity2
touch 3-replication-package/matlab_fortran/sensitivity1/script.m
touch 3-replication-package/matlab_fortran/sensitivity1/data.xlsx
touch 3-replication-package/matlab_fortran/sensitivity1/good_version.do
touch 3-replication-package/matlab_fortran/sensitivity2/nrtype.f90
touch 3-replication-package/matlab_fortran/sensitivity2/main.f90
touch 3-replication-package/matlab_fortran/sensitivity2/a.out
touch 3-replication-package/matlab_fortran/sensitivity2/models.f90
touch 3-replication-package/matlab_fortran/sensitivity2/models.mod
touch 3-replication-package/mary/NLSY97/nlsy97.do
touch 3-replication-package/james/NLSY97/nlsy97_v2.do

# compress
zip -r 3-replication-package.zip 3-replication-package
zip -r 4-confidential-data-not-for-publication.zip 4-confidential-data-not-for-publication

# remove uncompressed folders
# rm -rf 3-replication-package 4-confidential-data-not-for-publication


