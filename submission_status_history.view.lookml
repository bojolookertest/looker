- view: submission_status_history
  sql_table_name: SUBMISSION_STATUS_HISTORY
  fields:

  - dimension: submission_status_history_id
    primary_key: true
    type: int
    sql: ${TABLE}.SUBMISSION_STATUS_HISTORY_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: submission_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_ID

  - dimension: submission_status_code
    sql: ${TABLE}.SUBMISSION_STATUS_CODE

  - dimension: submission_status_history_reason_code
    sql: ${TABLE}.SUBMISSION_STATUS_HISTORY_REASON_CODE

  - measure: count
    type: count
    drill_fields: [submission_status_history_id, submission.submission_id]

