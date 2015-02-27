- view: guarantee_period
  sql_table_name: GUARANTEE_PERIOD
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: percentage
    type: int
    sql: ${TABLE}.PERCENTAGE

  - dimension: period
    type: int
    sql: ${TABLE}.PERIOD

  - measure: count
    type: count
    drill_fields: [id]

