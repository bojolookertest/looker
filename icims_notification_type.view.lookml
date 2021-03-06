- view: icims_notification_type
  sql_table_name: ICIMS_NOTIFICATION_TYPE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: reference_table_name
    sql: ${TABLE}.REFERENCE_TABLE_NAME

  - measure: count
    type: count
    drill_fields: [reference_table_name]

