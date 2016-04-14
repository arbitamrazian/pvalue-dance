# pvalue-dance
High P-values keeping you down? Resample

In keeping with the theme of "How To Lie With Statistics" by Darrell Huff, this repo will investigate the fragile properties of P-values and how they can lie to you.  

## Setup
Suppose a biology student is administering a drug to a group of cells and wants to show that the drug had an effect on the cells size.  We will model the mean and varience adjusted size of the cell as normal distribution S ~ N(0,1).  The student has two groups that he/she will monitor during the test.  
  1. The "control" group:  The control group will not receive the drug.  We expect the control groups cell size to be distributed normally with mean 0 and varience of 1 after the expirment.  
  2. The "experimental" group:  This group will recieve the drug.  The student hopes that the drug has a measureable effect on this group of cells
