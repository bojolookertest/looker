- view: salary_range_type
  sql_table_name: SALARY_RANGE_TYPE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: salary_midpoint
    type: int
    sql: ${TABLE}.SALARY_MIDPOINT

  - measure: count
    type: count
    drill_fields: []

