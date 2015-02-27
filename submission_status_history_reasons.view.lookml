- view: submission_status_history_reasons
  sql_table_name: SUBMISSION_STATUS_HISTORY_REASONS
  fields:

  - dimension: reason_code
    sql: ${TABLE}.REASON_CODE

  - dimension: status_history_id
    type: int
    sql: ${TABLE}.STATUS_HISTORY_ID

  - measure: count
    type: count
    drill_fields: []

