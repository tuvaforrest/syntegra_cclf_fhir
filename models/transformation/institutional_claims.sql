{{
    config( materialized='ephemeral' )
}}

select
    cast(h.cur_clm_uniq_id as varchar) as claim_id
    ,cast(d.clm_line_num as int) as claim_line_number
    ,cast(h.bene_mbi_id as varchar) as patient_id
    ,cast(h.clm_from_dt as date) as claim_start_date
    ,cast(h.clm_thru_dt as date) as claim_end_date
    ,cast(NULL as date) as admission_date
    ,cast(NULL as date) as discharge_date
    ,cast(NULL as date) as claim_line_start_date
    ,cast(NULL as date) as claim_line_end_date
    ,cast('I' as varchar) as claim_type
    ,cast(h.clm_bill_fac_type_cd || h.clm_bill_clsfctn_cd || h.clm_bill_freq_cd as varchar) as bill_type_code
    ,cast(NULL as varchar) as place_of_service_code
    ,cast(h.clm_admsn_src_cd as varchar) as admit_source_code
    ,cast(h.clm_admsn_type_cd as varchar) as admit_type_code
    ,cast(h.bene_ptnt_stus_cd as varchar) as discharge_disposition_code
    ,cast(h.dgns_drg_cd as varchar) as ms_drg
    ,cast(d.clm_line_prod_rev_ctr_cd as varchar) as revenue_center_code
    ,cast(d.clm_line_srvc_unit_qty as int) as service_unit_quantity
    ,cast(d.clm_line_hcpcs_cd as varchar) as hcpcs_code
    ,cast(d.hcpcs_1_mdfr_cd as varchar) as hcpcs_modifier_1
    ,cast(d.hcpcs_2_mdfr_cd as varchar) as hcpcs_modifier_2
    ,cast(d.hcpcs_3_mdfr_cd as varchar) as hcpcs_modifier_3
    ,cast(d.hcpcs_4_mdfr_cd as varchar) as hcpcs_modifier_4
    ,cast(d.hcpcs_5_mdfr_cd as varchar) as hcpcs_modifier_5
    ,cast(h.atndg_prvdr_npi_num as varchar) as physician_npi
    ,cast(h.fac_prvdr_npi_num as varchar) as facility_npi
    ,cast(NULL as date) as paid_date
    ,cast(h.clm_pmt_amt as float) as paid_amount
    ,cast(h.clm_mdcr_instnl_tot_chrg_amt as float) as charge_amount
    ,cast(ifnull(h.clm_adjsmt_type_cd,'O') as varchar) as adjustment_type_code
    ,cast(dx.diagnosis_code_1 as varchar) as diagnosis_code_1
    ,cast(dx.diagnosis_code_2 as varchar) as diagnosis_code_2
    ,cast(dx.diagnosis_code_3 as varchar) as diagnosis_code_3
    ,cast(dx.diagnosis_code_4 as varchar) as diagnosis_code_4
    ,cast(dx.diagnosis_code_5 as varchar) as diagnosis_code_5
    ,cast(dx.diagnosis_code_6 as varchar) as diagnosis_code_6
    ,cast(dx.diagnosis_code_7 as varchar) as diagnosis_code_7
    ,cast(dx.diagnosis_code_8 as varchar) as diagnosis_code_8
    ,cast(dx.diagnosis_code_9 as varchar) as diagnosis_code_9
    ,cast(dx.diagnosis_code_10 as varchar) as diagnosis_code_10
    ,cast(dx.diagnosis_code_11 as varchar) as diagnosis_code_11
    ,cast(dx.diagnosis_code_12 as varchar) as diagnosis_code_12
    ,cast(dx.diagnosis_code_13 as varchar) as diagnosis_code_13
    ,cast(dx.diagnosis_code_14 as varchar) as diagnosis_code_14
    ,cast(dx.diagnosis_code_15 as varchar) as diagnosis_code_15
    ,cast(dx.diagnosis_code_16 as varchar) as diagnosis_code_16
    ,cast(dx.diagnosis_code_17 as varchar) as diagnosis_code_17
    ,cast(dx.diagnosis_code_18 as varchar) as diagnosis_code_18
    ,cast(dx.diagnosis_code_19 as varchar) as diagnosis_code_19
    ,cast(dx.diagnosis_code_20 as varchar) as diagnosis_code_20
    ,cast(dx.diagnosis_code_21 as varchar) as diagnosis_code_21
    ,cast(dx.diagnosis_code_22 as varchar) as diagnosis_code_22
    ,cast(dx.diagnosis_code_23 as varchar) as diagnosis_code_23
    ,cast(dx.diagnosis_code_24 as varchar) as diagnosis_code_24
    ,cast(dx.diagnosis_code_25 as varchar) as diagnosis_code_25
    ,cast(dx.diagnosis_poa_1 as varchar) as diagnosis_poa_1
    ,cast(dx.diagnosis_poa_2 as varchar) as diagnosis_poa_2
    ,cast(dx.diagnosis_poa_3 as varchar) as diagnosis_poa_3
    ,cast(dx.diagnosis_poa_4 as varchar) as diagnosis_poa_4
    ,cast(dx.diagnosis_poa_5 as varchar) as diagnosis_poa_5
    ,cast(dx.diagnosis_poa_6 as varchar) as diagnosis_poa_6
    ,cast(dx.diagnosis_poa_7 as varchar) as diagnosis_poa_7
    ,cast(dx.diagnosis_poa_8 as varchar) as diagnosis_poa_8
    ,cast(dx.diagnosis_poa_9 as varchar) as diagnosis_poa_9
    ,cast(dx.diagnosis_poa_10 as varchar) as diagnosis_poa_10
    ,cast(dx.diagnosis_poa_11 as varchar) as diagnosis_poa_11
    ,cast(dx.diagnosis_poa_12 as varchar) as diagnosis_poa_12
    ,cast(dx.diagnosis_poa_13 as varchar) as diagnosis_poa_13
    ,cast(dx.diagnosis_poa_14 as varchar) as diagnosis_poa_14
    ,cast(dx.diagnosis_poa_15 as varchar) as diagnosis_poa_15
    ,cast(dx.diagnosis_poa_16 as varchar) as diagnosis_poa_16
    ,cast(dx.diagnosis_poa_17 as varchar) as diagnosis_poa_17
    ,cast(dx.diagnosis_poa_18 as varchar) as diagnosis_poa_18
    ,cast(dx.diagnosis_poa_19 as varchar) as diagnosis_poa_19
    ,cast(dx.diagnosis_poa_20 as varchar) as diagnosis_poa_20
    ,cast(dx.diagnosis_poa_21 as varchar) as diagnosis_poa_21
    ,cast(dx.diagnosis_poa_22 as varchar) as diagnosis_poa_22
    ,cast(dx.diagnosis_poa_23 as varchar) as diagnosis_poa_23
    ,cast(dx.diagnosis_poa_24 as varchar) as diagnosis_poa_24
    ,cast(dx.diagnosis_poa_25 as varchar) as diagnosis_poa_25
    ,cast(dx.dgns_prcdr_icd_ind as varchar) as diagnosis_code_type
    ,cast(px.dgns_prcdr_icd_ind as varchar) as procedure_code_type
    ,cast(px.procedure_code_1 as varchar) as procedure_code_1
    ,cast(px.procedure_code_2 as varchar) as procedure_code_2
    ,cast(px.procedure_code_3 as varchar) as procedure_code_3
    ,cast(px.procedure_code_4 as varchar) as procedure_code_4
    ,cast(px.procedure_code_5 as varchar) as procedure_code_5
    ,cast(px.procedure_code_6 as varchar) as procedure_code_6
    ,cast(px.procedure_code_7 as varchar) as procedure_code_7
    ,cast(px.procedure_code_8 as varchar) as procedure_code_8
    ,cast(px.procedure_code_9 as varchar) as procedure_code_9
    ,cast(px.procedure_code_10 as varchar) as procedure_code_10
    ,cast(px.procedure_code_11 as varchar) as procedure_code_11
    ,cast(px.procedure_code_12 as varchar) as procedure_code_12
    ,cast(px.procedure_code_13 as varchar) as procedure_code_13
    ,cast(px.procedure_code_14 as varchar) as procedure_code_14
    ,cast(px.procedure_code_15 as varchar) as procedure_code_15
    ,cast(px.procedure_code_16 as varchar) as procedure_code_16
    ,cast(px.procedure_code_17 as varchar) as procedure_code_17
    ,cast(px.procedure_code_18 as varchar) as procedure_code_18
    ,cast(px.procedure_code_19 as varchar) as procedure_code_19
    ,cast(px.procedure_code_20 as varchar) as procedure_code_20
    ,cast(px.procedure_code_21 as varchar) as procedure_code_21
    ,cast(px.procedure_code_22 as varchar) as procedure_code_22
    ,cast(px.procedure_code_23 as varchar) as procedure_code_23
    ,cast(px.procedure_code_24 as varchar) as procedure_code_24
    ,cast(px.procedure_code_25 as varchar) as procedure_code_25
    ,cast(px.procedure_date_1 as date) as procedure_date_1
    ,cast(px.procedure_date_2 as date) as procedure_date_2
    ,cast(px.procedure_date_3 as date) as procedure_date_3
    ,cast(px.procedure_date_4 as date) as procedure_date_4
    ,cast(px.procedure_date_5 as date) as procedure_date_5
    ,cast(px.procedure_date_6 as date) as procedure_date_6
    ,cast(px.procedure_date_7 as date) as procedure_date_7
    ,cast(px.procedure_date_8 as date) as procedure_date_8
    ,cast(px.procedure_date_9 as date) as procedure_date_9
    ,cast(px.procedure_date_10 as date) as procedure_date_10
    ,cast(px.procedure_date_11 as date) as procedure_date_11
    ,cast(px.procedure_date_12 as date) as procedure_date_12
    ,cast(px.procedure_date_13 as date) as procedure_date_13
    ,cast(px.procedure_date_14 as date) as procedure_date_14
    ,cast(px.procedure_date_15 as date) as procedure_date_15
    ,cast(px.procedure_date_16 as date) as procedure_date_16
    ,cast(px.procedure_date_17 as date) as procedure_date_17
    ,cast(px.procedure_date_18 as date) as procedure_date_18
    ,cast(px.procedure_date_19 as date) as procedure_date_19
    ,cast(px.procedure_date_20 as date) as procedure_date_20
    ,cast(px.procedure_date_21 as date) as procedure_date_21
    ,cast(px.procedure_date_22 as date) as procedure_date_22
    ,cast(px.procedure_date_23 as date) as procedure_date_23
    ,cast(px.procedure_date_24 as date) as procedure_date_24
    ,cast(px.procedure_date_25 as date) as procedure_date_25
from {{ var('parta_claims_header')}} h
inner join {{ var('parta_claims_revenue_center_detail')}} d
	on h.cur_clm_uniq_id = d.cur_clm_uniq_id
left join {{ ref('procedure_pivot')}} px
	on h.cur_clm_uniq_id = px.cur_clm_uniq_id
left join {{ ref('diagnosis_pivot')}} dx
	on h.cur_clm_uniq_id = dx.cur_clm_uniq_id