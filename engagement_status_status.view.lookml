- view: engagement_status_status
  sql_table_name: ENGAGEMENT_STATUS_STATUS
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

