- view: qrtz_simple_triggers
  sql_table_name: QRTZ_SIMPLE_TRIGGERS
  fields:

  - dimension: repeat_count
    type: number
    sql: ${TABLE}.REPEAT_COUNT

  - dimension: repeat_interval
    type: number
    sql: ${TABLE}.REPEAT_INTERVAL

  - dimension: times_triggered
    type: number
    sql: ${TABLE}.TIMES_TRIGGERED

  - dimension: trigger_group
    sql: ${TABLE}.TRIGGER_GROUP

  - dimension: trigger_name
    sql: ${TABLE}.TRIGGER_NAME

  - measure: count
    type: count
    drill_fields: [trigger_name]

