- view: referrer_status
  sql_table_name: REFERRER_STATUS
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: []

