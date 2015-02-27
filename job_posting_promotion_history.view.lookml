- view: job_posting_promotion_history
  sql_table_name: JOB_POSTING_PROMOTION_HISTORY
  fields:

  - dimension: job_posting_promotion_history_id
    primary_key: true
    type: int
    sql: ${TABLE}.JOB_POSTING_PROMOTION_HISTORY_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_ID

  - dimension: message
    sql: ${TABLE}.MESSAGE

  - measure: count
    type: count
    drill_fields: [job_posting_promotion_history_id, job_posting.original_job_posting_id]

