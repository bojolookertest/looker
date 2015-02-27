- view: metric_percentile
  sql_table_name: METRIC_PERCENTILE
  fields:

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: metric_definition_id
    type: int
    # hidden: true
    sql: ${TABLE}.METRIC_DEFINITION_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: percentile
    type: int
    sql: ${TABLE}.PERCENTILE

  - dimension: percentile_id
    type: int
    sql: ${TABLE}.PERCENTILE_ID

  - dimension: value
    type: number
    sql: ${TABLE}.VALUE

  - measure: count
    type: count
    drill_fields: [metric_definition.name, metric_definition.display_name]

