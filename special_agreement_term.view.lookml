- view: special_agreement_term
  sql_table_name: SPECIAL_AGREEMENT_TERM
  fields:

  - dimension: company_id
    type: int
    # hidden: true
    sql: ${TABLE}.COMPANY_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: default_term
    sql: ${TABLE}.DEFAULT_TERM

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: term_id
    type: int
    sql: ${TABLE}.TERM_ID

  - measure: count
    type: count
    drill_fields: [company.company_id, company.name, company.legal_company_name]

