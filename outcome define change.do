**修改pnc要求
svyset [pweight=ad_wt]
svy:tab m_pnc_all
svy:tab b_pnc_all
**maternal 以4为节点
gen m_pnc_4 =.
replace m_pnc_4 = 1 if m_pnc_all == 4
replace m_pnc_4 = 0 if m_pnc_all <= 3
logistic m_pnc_4 b2.v025 i.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001) 

**newborn 以8为节点
gen b_pnc_7 =.
replace b_pnc_7 = 1 if b_pnc_all >= 7 & b_pnc_all <= 9
replace b_pnc_7 = 0 if b_pnc_all < 7

logistic b_pnc_7 b2.v025 i.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001) 
