- view: posting_repost_type
  sql_table_name: POSTING_REPOST_TYPE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: []

