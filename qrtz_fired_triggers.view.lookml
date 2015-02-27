- view: qrtz_fired_triggers
  sql_table_name: QRTZ_FIRED_TRIGGERS
  fields:

  - dimension: entry_id
    sql: ${TABLE}.ENTRY_ID

  - dimension: fired_time
    type: number
    sql: ${TABLE}.FIRED_TIME

  - dimension: instance_name
    sql: ${TABLE}.INSTANCE_NAME

  - dimension: is_stateful
    sql: ${TABLE}.IS_STATEFUL

  - dimension: is_volatile
    sql: ${TABLE}.IS_VOLATILE

  - dimension: job_group
    sql: ${TABLE}.JOB_GROUP

  - dimension: job_name
    sql: ${TABLE}.JOB_NAME

  - dimension: priority
    type: int
    sql: ${TABLE}.PRIORITY

  - dimension: requests_recovery
    sql: ${TABLE}.REQUESTS_RECOVERY

  - dimension: state
    sql: ${TABLE}.STATE

  - dimension: trigger_group
    sql: ${TABLE}.TRIGGER_GROUP

  - dimension: trigger_name
    sql: ${TABLE}.TRIGGER_NAME

  - measure: count
    type: count
    drill_fields: [trigger_name, instance_name, job_name]

