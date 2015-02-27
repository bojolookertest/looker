- view: submission_status
  sql_table_name: SUBMISSION_STATUS
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: image
    sql: ${TABLE}.IMAGE

  - dimension: next_code
    sql: ${TABLE}.NEXT_CODE

  - dimension: previous_code
    sql: ${TABLE}.PREVIOUS_CODE

  - dimension: sort_order
    type: int
    sql: ${TABLE}.SORT_ORDER

  - measure: count
    type: count
    drill_fields: []

