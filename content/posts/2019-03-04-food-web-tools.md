---
title: Food web tools
author: Owen
date: '2019-03-04'
slug: food-web-tools
categories: []
tags: []
image:
  caption: ''
  focal_point: ''
---

Here you can get code to model and analyse the random, cascade, and niche food web models.

Download the code and example data files (and not the `ADBM_shiny` folder) for all of the above from [this folder on github](https://github.com/opetchey/dumping_ground/tree/master/random_cascade_niche). None of this code comes with any guarantee. In fact its all pretty dirty and not optimised. Please contact Owen if you have suggestions or possible corrections.

All the code is written for R. We really can't recommend it highly enough. Virtually every type of ecological analysis is already available in the main distribution of R and/or the extra packages). R's default graphics are of publication quality (and easily edited). Its free, will run on virtually any platform (e.g., Windows, Linux, Macs), and seems to be significantly faster than many other languages/environments. The only apparent down side is the steep learning curve. However, little steps easily tackle steep slopes; the effort will be rewarded. None of this code comes with any guarantee. In fact its all pretty dirty and not optimised. Please contact Owen if you have suggestions or possible corrections.

Some of the things you can do with the code:

* Model food webs using random, cascade, or niche algorithms.
* Plot a predation matrix of the food web.
* Calculate structural properties of food webs

## Instructions

1. Learn how to use R(!).
2. Get the code.
3. Source the file `FoodWebFunctions.r` into R; it contains a bunch of food webby functions.
4. Check out the code in `FoodWebExamples.r` for an example of how to use the functions.

Neo Martinez and Alice Boit recently showed me Network 3D. This is just a note to remind myself to write some instructions and code that can help me and perhaps others to move between the data format I’ve been using to store food webs, and a format easily read by Network 3D. Note that the R package cheddar has a function for formatting data for Network 3D.
