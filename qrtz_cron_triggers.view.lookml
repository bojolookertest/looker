- view: qrtz_cron_triggers
  sql_table_name: QRTZ_CRON_TRIGGERS
  fields:

  - dimension: cron_expression
    sql: ${TABLE}.CRON_EXPRESSION

  - dimension: time_zone_id
    sql: ${TABLE}.TIME_ZONE_ID

  - dimension: trigger_group
    sql: ${TABLE}.TRIGGER_GROUP

  - dimension: trigger_name
    sql: ${TABLE}.TRIGGER_NAME

  - measure: count
    type: count
    drill_fields: [trigger_name]

