cd "/Users/zhaoshuangyu 1/Desktop/WinCloud/2022 PNC Association/Workingdata"
use "pnc_nomissing_v2.dta", clear
*maternal PNC
logistic m_pnc2 b2.v025 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.m_edu i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.v151 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.radio2 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.tv2 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.v169a i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.fir_age i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.m_birth_age4 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.de_sba i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.anc4_2 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.de_place i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.hh_edu i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.marital i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic m_pnc2 i.news2 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)

*newborn PNC        
logistic b_pnc2 b2.v025 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.m_edu i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.v151 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.radio2 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.tv2 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.v169a i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.fir_age i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.m_birth_age4 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.de_sba i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.anc4_2 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.de_place i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.hh_edu i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.marital i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)
logistic b_pnc2 i.news2 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001)