cd "/Users/zhaoshuangyu 1/Desktop/WinCloud/2022 PNC Association/Workingdata"
use "pnc_nomissing_v2.dta", clear

keep if b19_01 < 36

**effective pnc
logistic m_pnc2 b2.v025 b3.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001) 

logistic b_pnc2 b2.v025 b3.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001) 

**country
sort country
by country:logistic m_pnc2 b2.v025 b3.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 [pw=wt],vce(cluster v001) 

by country:logistic b_pnc2 b2.v025 b3.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 [pw=wt],vce(cluster v001)
