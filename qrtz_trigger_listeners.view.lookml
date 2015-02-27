- view: qrtz_trigger_listeners
  sql_table_name: QRTZ_TRIGGER_LISTENERS
  fields:

  - dimension: trigger_group
    sql: ${TABLE}.TRIGGER_GROUP

  - dimension: trigger_listener
    sql: ${TABLE}.TRIGGER_LISTENER

  - dimension: trigger_name
    sql: ${TABLE}.TRIGGER_NAME

  - measure: count
    type: count
    drill_fields: [trigger_name]

