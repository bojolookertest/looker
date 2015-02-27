- view: submission_status_history_reason
  sql_table_name: SUBMISSION_STATUS_HISTORY_REASON
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: display_to_user_flag
    sql: ${TABLE}.DISPLAY_TO_USER_FLAG

  - dimension: order_weight
    type: int
    sql: ${TABLE}.ORDER_WEIGHT

  - dimension: submission_status_code
    sql: ${TABLE}.SUBMISSION_STATUS_CODE

  - measure: count
    type: count
    drill_fields: []

