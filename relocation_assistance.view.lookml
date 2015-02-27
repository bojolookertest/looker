- view: relocation_assistance
  sql_table_name: RELOCATION_ASSISTANCE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: display_order
    type: int
    sql: ${TABLE}.DISPLAY_ORDER

  - measure: count
    type: count
    drill_fields: []

