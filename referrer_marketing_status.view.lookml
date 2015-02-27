- view: referrer_marketing_status
  sql_table_name: REFERRER_MARKETING_STATUS
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: []

