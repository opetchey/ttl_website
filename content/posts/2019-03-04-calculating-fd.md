---
title: Calculating FD
author: Owen
date: '2019-03-04'
slug: calculating-fd
categories: []
tags: []
image:
  caption: ''
  focal_point: ''
---

Here you can get code and instruction on how to calculate FD, the measure of functional diversity that Owen and Kevin Gaston created.

Below is advice for using some code and functions in R that use the same matrix notation as in the original publication [Petchey & Gaston (2002)](http://onlinelibrary.wiley.com/doi/10.1046/j.1461-0248.2002.00339.x/abstract). The functions are updated to account for [the development](http://onlinelibrary.wiley.com/doi/10.1111/j.1461-0248.2006.00924.x/abstract) to FD we published in 2006.

## Example 1

* Get the [code and example datasets](https://github.com/opetchey/dumping_ground/tree/master/functional_diversity).
* Gain an understanding of how to use R.
* Use the `dist` and `hclust` functions to calculate a dendrogram from a trait matrix. Paste the `Xtree` function into R. Use it to transform the object returned by `hclust` into an object from which total branch is easy to calculate.
* The object returned by `Xtree` is a list containing a species by branch matrix (H1) and a branch length vector (h2) (see [here](http://onlinelibrary.wiley.com/doi/10.1046/j.1461-0248.2002.00339.x/abstract).
* Follow the methods in [Petchey Gaston (2002)](http://onlinelibrary.wiley.com/doi/10.1046/j.1461-0248.2002.00339.x/abstract) to get FD from H1 and h2.
* The `FD.example.1.r` file contains an example of using R to calculate the FD of a random community as it loses species; just paste the text into R. (Remember to paste in the `Xtree` function!)

## FD Example 2

This example demonstrates what people have been asking about some: how to calculate the FD of communities that have different compositions, and see if those measures of FD correlate with a particular measure of ecosystem process (or community property).

Always use three data files as the foundation of these types of analysis. Each is created in xl, saved in xl, and saved as a comma delimited text file (extension .csv) because these are easily read into R. You should download all of these files to a particular directory. (Actually, you really need only the csv files.) The files are:

1. The species by trait matrix: `species.traits.xls` (Excel file) or `species.traits.csv`(csv file). Here, the first column contains the names of the species and the remaining columns the traits.
2. The community composition matrix. `community.composition.xls` (Excel file) `community.composition.csv` (csv file). Species names must correspond with those in the species by trait matrix
3. The community by functioning matrix. `community.functioning.xls` (Excel file)  `community.functioning.csv` (csv file). Community identifiers must correspond with those in the community composition matrix.

The `FD.example.2.r` code shows how to calculate the FD of each community from the traits of species and see whether it looks like correlating with functioning.


## FD Example 3

And finally, for now, there is a demonstration of differences between FD and variance calculated on a single trait. See the file `FDandvariance.r`.
