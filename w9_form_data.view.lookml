- view: w9_form_data
  sql_table_name: W9_FORM_DATA
  fields:

  - dimension: w9_form_data_id
    primary_key: true
    type: int
    sql: ${TABLE}.W9_FORM_DATA_ID

  - dimension: authorized_first_name
    sql: ${TABLE}.AUTHORIZED_FIRST_NAME

  - dimension: authorized_last_name
    sql: ${TABLE}.AUTHORIZED_LAST_NAME

  - dimension: authorized_middle_name
    sql: ${TABLE}.AUTHORIZED_MIDDLE_NAME

  - dimension: certify_clause_citizen
    type: yesno
    sql: ${TABLE}.CERTIFY_CLAUSE_CITIZEN

  - dimension: certify_clause_id
    type: yesno
    sql: ${TABLE}.CERTIFY_CLAUSE_ID

  - dimension: certify_clause_withholding
    type: yesno
    sql: ${TABLE}.CERTIFY_CLAUSE_WITHHOLDING

  - dimension_group: creation_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_TIMESTAMP

  - dimension: legal_address_1
    sql: ${TABLE}.LEGAL_ADDRESS_1

  - dimension: legal_address_2
    sql: ${TABLE}.LEGAL_ADDRESS_2

  - dimension: legal_business_dba
    sql: ${TABLE}.LEGAL_BUSINESS_DBA

  - dimension: legal_business_name
    sql: ${TABLE}.LEGAL_BUSINESS_NAME

  - dimension: legal_city
    sql: ${TABLE}.LEGAL_CITY

  - dimension: legal_exempt_payee
    sql: ${TABLE}.LEGAL_EXEMPT_PAYEE

  - dimension: legal_first_name
    sql: ${TABLE}.LEGAL_FIRST_NAME

  - dimension: legal_last_name
    sql: ${TABLE}.LEGAL_LAST_NAME

  - dimension: legal_middle_name
    sql: ${TABLE}.LEGAL_MIDDLE_NAME

  - dimension: legal_state
    sql: ${TABLE}.LEGAL_STATE

  - dimension: legal_tax_classification
    sql: ${TABLE}.LEGAL_TAX_CLASSIFICATION

  - dimension: legal_zipcode
    sql: ${TABLE}.LEGAL_ZIPCODE

  - dimension: llc_description
    sql: ${TABLE}.LLC_DESCRIPTION

  - dimension: llc_type
    sql: ${TABLE}.LLC_TYPE

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: w9_eligible
    type: yesno
    sql: ${TABLE}.W9_ELIGIBLE

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - w9_form_data_id
    - legal_first_name
    - legal_middle_name
    - legal_last_name
    - legal_business_name
    - authorized_first_name
    - authorized_middle_name
    - authorized_last_name
    - person.person_id
    - person.first_name
    - person.last_name

