- view: qrtz_paused_trigger_grps
  sql_table_name: QRTZ_PAUSED_TRIGGER_GRPS
  fields:

  - dimension: trigger_group
    sql: ${TABLE}.TRIGGER_GROUP

  - measure: count
    type: count
    drill_fields: []

