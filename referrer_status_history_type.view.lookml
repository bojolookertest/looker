- view: referrer_status_history_type
  sql_table_name: REFERRER_STATUS_HISTORY_TYPE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: []

