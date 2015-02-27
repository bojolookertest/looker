- view: review
  sql_table_name: REVIEW
  fields:

  - dimension: review_id
    primary_key: true
    type: int
    sql: ${TABLE}.REVIEW_ID

  - dimension: active_flag
    sql: ${TABLE}.ACTIVE_FLAG

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

  - dimension: review_status_type_code
    sql: ${TABLE}.REVIEW_STATUS_TYPE_CODE

  - dimension: submission_reviewer_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_REVIEWER_ID

  - measure: count
    type: count
    drill_fields: [review_id, submission_reviewer.submission_reviewer_id, submission.count]

