- view: qrtz_scheduler_state
  sql_table_name: QRTZ_SCHEDULER_STATE
  fields:

  - dimension: checkin_interval
    type: number
    sql: ${TABLE}.CHECKIN_INTERVAL

  - dimension: instance_name
    sql: ${TABLE}.INSTANCE_NAME

  - dimension: last_checkin_time
    type: number
    sql: ${TABLE}.LAST_CHECKIN_TIME

  - measure: count
    type: count
    drill_fields: [instance_name]

