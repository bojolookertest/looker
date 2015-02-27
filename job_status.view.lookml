- view: job_status
  sql_table_name: JOB_STATUS
  fields:

  - dimension: disabled
    type: yesno
    sql: ${TABLE}.DISABLED

  - dimension_group: finish_by
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.FINISH_BY

  - dimension_group: finish
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.FINISH_TIME

  - dimension: job_name
    sql: ${TABLE}.JOB_NAME

  - dimension: run_asap
    type: yesno
    sql: ${TABLE}.RUN_ASAP

  - dimension: schedule
    sql: ${TABLE}.SCHEDULE

  - dimension: server_name
    sql: ${TABLE}.SERVER_NAME

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.START_TIME

  - measure: count
    type: count
    drill_fields: [job_name, server_name]

