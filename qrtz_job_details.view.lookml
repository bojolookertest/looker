- view: qrtz_job_details
  sql_table_name: QRTZ_JOB_DETAILS
  fields:

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: is_durable
    sql: ${TABLE}.IS_DURABLE

  - dimension: is_stateful
    sql: ${TABLE}.IS_STATEFUL

  - dimension: is_volatile
    sql: ${TABLE}.IS_VOLATILE

  - dimension: job_class_name
    sql: ${TABLE}.JOB_CLASS_NAME

  - dimension: job_data
    sql: ${TABLE}.JOB_DATA

  - dimension: job_group
    sql: ${TABLE}.JOB_GROUP

  - dimension: job_name
    sql: ${TABLE}.JOB_NAME

  - dimension: requests_recovery
    sql: ${TABLE}.REQUESTS_RECOVERY

  - measure: count
    type: count
    drill_fields: [job_name, job_class_name]

