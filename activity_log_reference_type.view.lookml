- view: activity_log_reference_type
  sql_table_name: ACTIVITY_LOG_REFERENCE_TYPE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: []

