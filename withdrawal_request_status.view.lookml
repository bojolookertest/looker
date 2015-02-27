- view: withdrawal_request_status
  sql_table_name: WITHDRAWAL_REQUEST_STATUS
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: []

