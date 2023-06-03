cd "/Users/zhaoshuangyu 1/Desktop/WinCloud/2022 PNC Association/Workingdata"
use "pnc_nomissing_v2.dta", clear

**rural&urban
sort v025
by v025:logistic m_pnc2 i.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001) 

by v025:logistic b_pnc2 i.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001) 

**maternal age
sort m_birth_age4
by m_birth_age4:logistic m_pnc2 b2.v025 i.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001) 

by m_birth_age4:logistic b_pnc2 b2.v025 i.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001) 
