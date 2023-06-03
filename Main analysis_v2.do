cd "/Users/zhaoshuangyu 1/Desktop/WinCloud/2022 PNC Association/Workingdata"
use "pnc_recent_final_v2.dta", clear

**PNC分级
gen m_pnc_sba2 = .
replace m_pnc_sba2 = 1 if m_pnc_sba == 1
replace m_pnc_sba2 = 0 if m_pnc_sba == 2 | m_pnc_sba == 3 | m_pnc_sba ==.

gen m_pnc71_2 = m_pnc71
replace m_pnc71_2 = 0 if m_pnc71 ==.

gen b_pnc71_2 = b_pnc71
replace b_pnc71_2 = 0 if b_pnc71 ==.

gen b_pnc_sba2 = .
replace b_pnc_sba2 = 1 if b_pnc_sba == 1
replace b_pnc_sba2 = 0 if b_pnc_sba == 2 | b_pnc_sba == 3 | b_pnc_sba ==.

gen m77_2 = .
replace m77_2 = 1 if m77_1 == 1
replace m77_2 = 0 if m77_1 == 0 | m77_1 ==.
replace m77_2 = 0 if m77_1 > 1 & m77_1 < 9

gen b78a2 = m78a_1
replace b78a2 = 0 if b78a2 == 8 | b78a2 ==.

gen b78b2 = m78b_1
replace b78b2 = 0 if b78b2 == 8 | b78b2 ==.

gen b78c2 = m78c_1
replace b78c2 = 0 if b78c2 == 8 | b78c2 ==.

gen b78d2 = m78d_1
replace b78d2 = 0 if b78d2 == 8 | b78d2 ==.

gen b78e2 = m78e_1
replace b78e2 = 0 if b78e2 == 8 | b78e2 ==.

gen b_weighted =.
replace b_weighted = 1 if m19a_1 == 1 | m19a_1 == 2
replace b_weighted = 0 if m19a_1 == 0 | m19a_1 == 8 | m19a_1 == 9 | m19a_1 == .

gen m_pnc_all = m_pnc_sba2 + m_pnc71_2 + b78d2 + b78e2
gen b_pnc_all = b_pnc_sba2 + b_pnc71_2 + m77_2 + b78a2 + b78b2 + b78c2 + b78d2 + b78e2 + b_weighted

tab m_pnc_all
tab b_pnc_all

gen m_pnc2 =.
replace m_pnc2 = 1 if m_pnc_all >= 3
replace m_pnc2 = 0 if m_pnc_all < 3

gen b_pnc2 =.
replace b_pnc2 = 1 if b_pnc_all >= 5 & b_pnc_all <= 9
replace b_pnc2 = 0 if b_pnc_all < 5

save "pnc_recent_final_v2.dta", replace
use "pnc_recent_final_v2.dta", clear

**descriptive table-first column
tab v025, missing
tab m_edu, missing
tab v151, missing
tab news2, missing
tab radio2, missing
tab tv2, missing
tab v169a, missing
tab fir_age, missing
tab m_birth_age4, missing
tab de_sba, missing
tab anc4_2, missing
tab de_place, missing
tab hh_edu, missing
tab marital, missing
tab v190, missing
tab child_age5, missing
tab b4_01, missing
tab b_order, missing

svyset [pweight=ad_wt]
svy:tab m_pnc_sba2, ci missing
svy:tab m_pnc71_2, ci missing
svy:tab b_pnc_sba2, ci missing
svy:tab b_pnc71_2, ci missing
svy:tab m77_2, ci missing
svy:tab b78a2, ci missing
svy:tab b78b2, ci missing
svy:tab b78c2, ci missing
svy:tab b78d2, ci missing
svy:tab b78e2, ci missing
svy:tab b_weighted, ci missing

svyset [pweight=ad_wt]
svy:tab m_pnc2, ci
svy:tab b_pnc2, ci
svy:tab v025 if m_pnc2 == 0, ci missing
svy:tab v025 if m_pnc2 == 1, ci missing
svy:tab m_edu if m_pnc2 == 0, ci missing
svy:tab m_edu if m_pnc2 == 1, ci missing
svy:tab v151 if m_pnc2 == 0, ci missing
svy:tab v151 if m_pnc2 == 1, ci missing
svy:tab news2 if m_pnc2 == 0, ci missing
svy:tab news2 if m_pnc2 == 1, ci missing
svy:tab radio2 if m_pnc2 == 0, ci missing
svy:tab radio2 if m_pnc2 == 1, ci missing
svy:tab tv2 if m_pnc2 == 0, ci missing
svy:tab tv2 if m_pnc2 == 1, ci missing
svy:tab v169a if m_pnc2 == 0, ci missing
svy:tab v169a if m_pnc2 == 1, ci missing
svy:tab fir_age if m_pnc2 == 0, ci missing
svy:tab fir_age if m_pnc2 == 1, ci missing
svy:tab m_birth_age4 if m_pnc2 == 0, ci missing
svy:tab m_birth_age4 if m_pnc2 == 1, ci missing
svy:tab de_sba if m_pnc2 == 0, ci missing
svy:tab de_sba if m_pnc2 == 1, ci missing
svy:tab anc4_2 if m_pnc2 == 0, ci missing
svy:tab anc4_2 if m_pnc2 == 1, ci missing
svy:tab de_place if m_pnc2 == 0, ci missing
svy:tab de_place if m_pnc2 == 1, ci missing
svy:tab hh_edu if m_pnc2 == 0, ci missing
svy:tab hh_edu if m_pnc2 == 1, ci missing
svy:tab marital if m_pnc2 == 0, ci missing
svy:tab marital if m_pnc2 == 1, ci missing
svy:tab v190 if m_pnc2 == 0, ci missing
svy:tab v190 if m_pnc2 == 1, ci missing
svy:tab child_age5 if m_pnc2 == 0, ci missing
svy:tab child_age5 if m_pnc2 == 1, ci missing
svy:tab b4_01 if m_pnc2 == 0, ci missing
svy:tab b4_01 if m_pnc2 == 1, ci missing
svy:tab b_order if m_pnc2 == 0, ci missing
svy:tab b_order if m_pnc2 == 1, ci missing

svy:tab v025 if b_pnc2 == 0, ci missing
svy:tab v025 if b_pnc2 == 1, ci missing
svy:tab m_edu if b_pnc2 == 0, ci missing
svy:tab m_edu if b_pnc2 == 1, ci missing
svy:tab v151 if b_pnc2 == 0, ci missing
svy:tab v151 if b_pnc2 == 1, ci missing
svy:tab news2 if b_pnc2 == 0, ci missing
svy:tab news2 if b_pnc2 == 1, ci missing
svy:tab radio2 if b_pnc2 == 0, ci missing
svy:tab radio2 if b_pnc2 == 1, ci missing
svy:tab tv2 if b_pnc2 == 0, ci missing
svy:tab tv2 if b_pnc2 == 1, ci missing
svy:tab v169a if b_pnc2 == 0, ci missing
svy:tab v169a if b_pnc2 == 1, ci missing
svy:tab fir_age if b_pnc2 == 0, ci missing
svy:tab fir_age if b_pnc2 == 1, ci missing
svy:tab m_birth_age4 if b_pnc2 == 0, ci missing
svy:tab m_birth_age4 if b_pnc2 == 1, ci missing
svy:tab de_sba if b_pnc2 == 0, ci missing
svy:tab de_sba if b_pnc2 == 1, ci missing
svy:tab anc4_2 if b_pnc2 == 0, ci missing
svy:tab anc4_2 if b_pnc2 == 1, ci missing
svy:tab de_place if b_pnc2 == 0, ci missing
svy:tab de_place if b_pnc2 == 1, ci missing
svy:tab hh_edu if b_pnc2 == 0, ci missing
svy:tab hh_edu if b_pnc2 == 1, ci missing
svy:tab marital if b_pnc2 == 0, ci missing
svy:tab marital if b_pnc2 == 1, ci missing
svy:tab v190 if b_pnc2 == 0, ci missing
svy:tab v190 if b_pnc2 == 1, ci missing
svy:tab child_age5 if b_pnc2 == 0, ci missing
svy:tab child_age5 if b_pnc2 == 1, ci missing
svy:tab b4_01 if b_pnc2 == 0, ci missing
svy:tab b4_01 if b_pnc2 == 1, ci missing
svy:tab b_order if b_pnc2 == 0, ci missing
svy:tab b_order if b_pnc2 == 1, ci missing



drop if v025 ==. | m_edu ==.| v151 ==. | news2 ==. | radio2 ==. | tv2 ==. | v169a ==. | fir_age ==. | m_birth_age4 ==. | hh_edu ==. | v190 ==. | de_sba ==. | anc4_2 == . | de_place ==. | marital ==. | v190 ==. | b_order ==. | b4_01 ==. | child_age5 ==.

save "pnc_nomissing_v2.dta", replace
use "pnc_nomissing_v2.dta", clear

**
sort country
by country:tab m_pnc2 [aw=wt]
by country:tab b_pnc2 [aw=wt]
by country:tab de_sba [aw=wt]
by country:tab de_place [aw=wt]
by country:tab anc4_2 [aw=wt]

*keep m_pnc2 b_pnc2 v025 m_edu v151 news2 radio2 tv2 v169a fir_age m_birth_age4 de_sba anc4 de_place hh_edu marital v190 b_order b4_01 child_age5
*codebook

**effective pnc
logistic m_pnc2 b2.v025 i.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001) 

logistic b_pnc2 b2.v025 i.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 i.countrycode [pw=ad_wt],vce(cluster v001) 

**country
sort country
by country:logistic m_pnc2 b2.v025 i.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 [pw=wt],vce(cluster v001) 

by country:logistic b_pnc2 b2.v025 i.m_edu i.v151 i.news2 i.radio2 i.tv2 i.v169a i.fir_age i.m_birth_age4 i.de_sba i.anc4_2 i.de_place i.hh_edu i.marital i.v190 i.b_order i.b4_01 i.child_age5 [pw=wt],vce(cluster v001)
