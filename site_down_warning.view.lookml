- view: site_down_warning
  sql_table_name: SITE_DOWN_WARNING
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: comment
    sql: ${TABLE}.COMMENT

  - dimension: message
    sql: ${TABLE}.MESSAGE

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.START_DATE

  - dimension_group: stop
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.STOP_DATE

  - measure: count
    type: count
    drill_fields: [id]

