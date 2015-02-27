- view: qrtz_triggers
  sql_table_name: QRTZ_TRIGGERS
  fields:

  - dimension: calendar_name
    sql: ${TABLE}.CALENDAR_NAME

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: end_time
    type: number
    sql: ${TABLE}.END_TIME

  - dimension: is_volatile
    sql: ${TABLE}.IS_VOLATILE

  - dimension: job_data
    sql: ${TABLE}.JOB_DATA

  - dimension: job_group
    sql: ${TABLE}.JOB_GROUP

  - dimension: job_name
    sql: ${TABLE}.JOB_NAME

  - dimension: misfire_instr
    type: number
    sql: ${TABLE}.MISFIRE_INSTR

  - dimension: next_fire_time
    type: number
    sql: ${TABLE}.NEXT_FIRE_TIME

  - dimension: prev_fire_time
    type: number
    sql: ${TABLE}.PREV_FIRE_TIME

  - dimension: priority
    type: int
    sql: ${TABLE}.PRIORITY

  - dimension: start_time
    type: number
    sql: ${TABLE}.START_TIME

  - dimension: trigger_group
    sql: ${TABLE}.TRIGGER_GROUP

  - dimension: trigger_name
    sql: ${TABLE}.TRIGGER_NAME

  - dimension: trigger_state
    sql: ${TABLE}.TRIGGER_STATE

  - dimension: trigger_type
    sql: ${TABLE}.TRIGGER_TYPE

  - measure: count
    type: count
    drill_fields: [trigger_name, job_name, calendar_name]

