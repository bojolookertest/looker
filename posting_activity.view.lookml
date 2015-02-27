- view: posting_activity
  sql_table_name: POSTING_ACTIVITY
  fields:

  - dimension: jpid
    type: int
    sql: ${TABLE}.JPID

  - dimension: prcount
    type: number
    sql: ${TABLE}.PRCOUNT

  - dimension: pvcount
    type: number
    sql: ${TABLE}.PVCOUNT

  - dimension: scount
    type: number
    sql: ${TABLE}.SCOUNT

  - measure: count
    type: count
    drill_fields: []

