- view: company
  sql_table_name: COMPANY
  fields:

  - dimension: company_id
    primary_key: true
    type: int
    sql: ${TABLE}.COMPANY_ID

  - dimension: approved_flag
    sql: ${TABLE}.APPROVED_FLAG

  - dimension: company_account_type_code
    sql: ${TABLE}.COMPANY_ACCOUNT_TYPE_CODE

  - dimension: company_legal_status_type_code
    sql: ${TABLE}.COMPANY_LEGAL_STATUS_TYPE_CODE

  - dimension: company_type_code
    sql: ${TABLE}.COMPANY_TYPE_CODE

  - dimension: company_website
    sql: ${TABLE}.COMPANY_WEBSITE

  - dimension: contract_type_code
    sql: ${TABLE}.CONTRACT_TYPE_CODE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: custom_contract_flag
    sql: ${TABLE}.CUSTOM_CONTRACT_FLAG

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: diversity_status_certified
    sql: ${TABLE}.DIVERSITY_STATUS_CERTIFIED

  - dimension: enterprise_account_holder
    sql: ${TABLE}.ENTERPRISE_ACCOUNT_HOLDER

  - dimension: exclude_from_preview_flag
    sql: ${TABLE}.EXCLUDE_FROM_PREVIEW_FLAG

  - dimension: extend_credit_flag
    sql: ${TABLE}.EXTEND_CREDIT_FLAG

  - dimension: flat_fee_bounty_allowed_flag
    sql: ${TABLE}.FLAT_FEE_BOUNTY_ALLOWED_FLAG

  - dimension_group: launch
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAUNCH_DATE

  - dimension: legal_company_name
    sql: ${TABLE}.LEGAL_COMPANY_NAME

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: monthly_report_flag
    sql: ${TABLE}.MONTHLY_REPORT_FLAG

  - dimension: monthly_report_show_bunit_flag
    sql: ${TABLE}.MONTHLY_REPORT_SHOW_BUNIT_FLAG

  - dimension: monthly_report_show_candidate_flag
    sql: ${TABLE}.MONTHLY_REPORT_SHOW_CANDIDATE_FLAG

  - dimension: monthly_report_show_country_flag
    sql: ${TABLE}.MONTHLY_REPORT_SHOW_COUNTRY_FLAG

  - dimension: monthly_report_show_diversity_status_flag
    sql: ${TABLE}.MONTHLY_REPORT_SHOW_DIVERSITY_STATUS_FLAG

  - dimension: monthly_report_show_req_num_flag
    sql: ${TABLE}.MONTHLY_REPORT_SHOW_REQ_NUM_FLAG

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: ofccp_status_code
    sql: ${TABLE}.OFCCP_STATUS_CODE

  - dimension: parent_id
    type: int
    sql: ${TABLE}.PARENT_ID

  - dimension: payment_term
    type: int
    sql: ${TABLE}.PAYMENT_TERM

  - dimension: posting_credit_status_code
    sql: ${TABLE}.POSTING_CREDIT_STATUS_CODE

  - dimension: posting_repost_configurable
    sql: ${TABLE}.POSTING_REPOST_CONFIGURABLE

  - dimension: private_bounties_allowed
    sql: ${TABLE}.PRIVATE_BOUNTIES_ALLOWED

  - dimension: reviewer_enabled_flag
    sql: ${TABLE}.REVIEWER_ENABLED_FLAG

  - dimension: unlimited_enterprise_users_allowed_flag
    sql: ${TABLE}.UNLIMITED_ENTERPRISE_USERS_ALLOWED_FLAG

  - dimension: w9_type_code
    sql: ${TABLE}.W9_TYPE_CODE

  - measure: count
    type: count
    drill_fields: detail*

  - measure: CFP
    type: min
    sql: ${TABLE}.CREATION


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - company_id
    - name
    - legal_company_name
    - account.count
    - ats.count
    - ats_configuration.count
    - billing_notes.count
    - company_award_question.count
    - company_diversity_status.count
    - company_first_post.count
    - company_metadata.count
    - job_posting.count
    - monthly_report.count
    - note.count
    - person.count
    - report_preference_company.count
    - special_agreement_term.count
    - temp_person.count
    - tmp_mbr_lookback.count

