- view: metric_definition
  sql_table_name: METRIC_DEFINITION
  fields:

  - dimension: definition_id
    primary_key: true
    type: int
    sql: ${TABLE}.DEFINITION_ID

  - dimension: algorithm
    sql: ${TABLE}.ALGORITHM

  - dimension: context
    sql: ${TABLE}.CONTEXT

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: display_name
    sql: ${TABLE}.DISPLAY_NAME

  - dimension: force_recalc
    sql: ${TABLE}.FORCE_RECALC

  - dimension: good_percentile
    type: int
    sql: ${TABLE}.GOOD_PERCENTILE

  - dimension: good_value
    type: number
    sql: ${TABLE}.GOOD_VALUE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: period_amount
    type: int
    sql: ${TABLE}.PERIOD_AMOUNT

  - dimension: period_type
    sql: ${TABLE}.PERIOD_TYPE

  - dimension: reversed
    sql: ${TABLE}.REVERSED

  - dimension: type
    sql: ${TABLE}.TYPE

  - dimension: visible
    sql: ${TABLE}.VISIBLE

  - measure: count
    type: count
    drill_fields: [name, display_name, metric.count, metric_percentile.count]

