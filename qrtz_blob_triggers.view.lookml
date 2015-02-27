- view: qrtz_blob_triggers
  sql_table_name: QRTZ_BLOB_TRIGGERS
  fields:

  - dimension: blob_data
    sql: ${TABLE}.BLOB_DATA

  - dimension: trigger_group
    sql: ${TABLE}.TRIGGER_GROUP

  - dimension: trigger_name
    sql: ${TABLE}.TRIGGER_NAME

  - measure: count
    type: count
    drill_fields: [trigger_name]

