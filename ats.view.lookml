- view: ats
  sql_table_name: ATS
  fields:

  - dimension: ats_company_id
    type: int
    # hidden: true
    sql: ${TABLE}.ATS_COMPANY_ID

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - dimension: company_reference_id
    sql: ${TABLE}.COMPANY_REFERENCE_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: instructions
    sql: ${TABLE}.INSTRUCTIONS

  - dimension: manual_integration
    type: yesno
    sql: ${TABLE}.MANUAL_INTEGRATION

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: password
    sql: ${TABLE}.PASSWORD

  - dimension: relationship_id
    type: int
    # hidden: true
    sql: ${TABLE}.RELATIONSHIP_ID

  - dimension: url
    sql: ${TABLE}.URL

  - dimension: username
    sql: ${TABLE}.USERNAME

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - username
    - ats_company.ats_company_id
    - ats_company.name
    - company.company_id
    - company.name
    - company.legal_company_name
    - relationship.relationship_id

