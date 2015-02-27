- view: job_run
  sql_table_name: JOB_RUN
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: data
    sql: ${TABLE}.DATA

  - dimension: error
    sql: ${TABLE}.ERROR

  - dimension_group: finish
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.FINISH_TIME

  - dimension: job_name
    sql: ${TABLE}.JOB_NAME

  - dimension: server_name
    sql: ${TABLE}.SERVER_NAME

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.START_TIME

  - dimension: success
    type: yesno
    sql: ${TABLE}.SUCCESS

  - measure: count
    type: count
    drill_fields: [id, job_name, server_name]

