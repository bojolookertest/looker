- view: version
  sql_table_name: VERSION
  fields:

  - dimension: version
    type: int
    sql: ${TABLE}.VERSION

  - measure: count
    type: count
    drill_fields: []

