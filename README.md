# pvalue-dance
High P-values keeping you down? Resample.

In keeping with the theme of "How To Lie With Statistics" by Darrell Huff, this repo will investigate the fragile properties of P-values and how they can be used to deceive an audience.

## Setup
Suppose a biology student is administering a drug to a group of 100 cells and wants to show that the drug had an effect on the cells size.  We will model the mean and variance adjusted size of the cell as normal distribution S ~ N(0,1).  The student has two groups that he/she will monitor during the test.  
  1. The "control" group:  The control group will not receive the drug.  We expect the control groups cell size to be distributed normally with mean 0 and variance of 1 after the experiment.  
  2. The "experimental" group:  This group will receive the drug.  The student hopes that the drug has a measureable effect on the size of this group of cells.

The student administers the drug to the experimental group and measured the size of the cells and took the average.  To test the “significance” of the results he performed a two sided t-test (Ho: mu=0 H1: mu =/= 0) and found a p-value of 0.63.  Given a significance rate of alpha=0.05, he concluded that his results are not significant.  Maybe there was a mistake.  The student repeats the experiment.   He again gets p-value larger than 0.05.  After repeating the experiment 24 times he finally gets a p-value of 0.03.   The student runs to his advisor, publishes a paper  and wins the Nobel prize!

## What’s going on?
Ok maybe the story above is a little too extreme.  If ethics are not enough, repeat experiment will eventually disprove the work.  But what is the math that governs this behavior. Here is the intuition:  The t-test  with a significance of 95% means that, if the null hypothesis is true, 95% of the samples the student takes will not be significant.  The number of times the student must retry his/her experiment is governed by a geometric distribution with parameter p=0.05.  The mean of this distribution is 20 and does not depend on the sample size.  So on average the student must retry his/her experiment 20 times before getting a significant result.
