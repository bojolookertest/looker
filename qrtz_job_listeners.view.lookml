- view: qrtz_job_listeners
  sql_table_name: QRTZ_JOB_LISTENERS
  fields:

  - dimension: job_group
    sql: ${TABLE}.JOB_GROUP

  - dimension: job_listener
    sql: ${TABLE}.JOB_LISTENER

  - dimension: job_name
    sql: ${TABLE}.JOB_NAME

  - measure: count
    type: count
    drill_fields: [job_name]

