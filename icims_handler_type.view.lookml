- view: icims_handler_type
  sql_table_name: ICIMS_HANDLER_TYPE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: []

