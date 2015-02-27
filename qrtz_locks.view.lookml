- view: qrtz_locks
  sql_table_name: QRTZ_LOCKS
  fields:

  - dimension: lock_name
    sql: ${TABLE}.LOCK_NAME

  - measure: count
    type: count
    drill_fields: [lock_name]

