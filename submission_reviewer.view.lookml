- view: submission_reviewer
  sql_table_name: SUBMISSION_REVIEWER
  fields:

  - dimension: submission_reviewer_id
    primary_key: true
    type: int
    sql: ${TABLE}.SUBMISSION_REVIEWER_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: job_posting_reviewer_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_REVIEWER_ID

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

  - measure: count
    type: count
    drill_fields: [submission_reviewer_id, submission.submission_id, job_posting_reviewer.job_posting_reviewer_id, review.count]

