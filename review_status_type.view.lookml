- view: review_status_type
  sql_table_name: REVIEW_STATUS_TYPE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: sort_order
    type: int
    sql: ${TABLE}.SORT_ORDER

  - measure: count
    type: count
    drill_fields: []

