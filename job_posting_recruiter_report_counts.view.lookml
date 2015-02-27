- view: job_posting_recruiter_report_counts
  sql_table_name: JOB_POSTING_RECRUITER_REPORT_COUNTS
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

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

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: pending_requests
    type: int
    sql: ${TABLE}.PENDING_REQUESTS

  - dimension: posting_action_type_code
    sql: ${TABLE}.POSTING_ACTION_TYPE_CODE

  - dimension: recruiter_id
    type: int
    # hidden: true
    sql: ${TABLE}.RECRUITER_ID

  - dimension: saved_flag
    type: int
    sql: ${TABLE}.SAVED_FLAG

  - dimension: submissions
    type: int
    sql: ${TABLE}.SUBMISSIONS

  - measure: count
    type: count
    drill_fields: [id, job_posting.original_job_posting_id, recruiter.legal_first_name, recruiter.legal_last_name]

