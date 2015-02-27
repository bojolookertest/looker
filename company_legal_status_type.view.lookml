- view: company_legal_status_type
  sql_table_name: COMPANY_LEGAL_STATUS_TYPE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: []

