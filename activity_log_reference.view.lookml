- view: activity_log_reference
  sql_table_name: ACTIVITY_LOG_REFERENCE
  fields:

  - dimension: activity_log_id
    type: int
    # hidden: true
    sql: ${TABLE}.ACTIVITY_LOG_ID

  - dimension: reference_id
    type: int
    sql: ${TABLE}.REFERENCE_ID

  - dimension: reference_type
    sql: ${TABLE}.REFERENCE_TYPE

  - dimension: type_id
    type: int
    sql: ${TABLE}.TYPE_ID

  - measure: count
    type: count
    drill_fields: [activity_log.id]

