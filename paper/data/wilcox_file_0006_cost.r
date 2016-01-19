#Precision
coref_p=c(0.165243532,0.168612714,0.195634953,0.172589677,0.179265574,0.20864691,0.236549587,0.218925127,0.298376125)
cochg_p=c(0.0914587,0.10220134,0.175369193,0.149735927,0.200903947)
#Recall
coref_r=c(0.212995052,0.16113769,0.142661197,0.109901232,0.085838967,0.062706637,0.048061674,0.035831078,0.021271574)
cochg_r=c(0.062694088,0.04565677,0.031777639,0.020246173,0.010537297)
#F-measure
coref_f=c(0.186105047,0.164790477,0.165000498,0.134289759,0.116089838,0.096431731,0.079891211,0.061582981,0.039712032)
cochg_f=c(0.074392683,0.063117039,0.053805495,0.035669397,0.02002433)
wilcox.test(coref_p,cochg_p,alternative='greater')
wilcox.test(coref_r,cochg_r,alternative='greater')
wilcox.test(coref_f,cochg_f,alternative='greater')



