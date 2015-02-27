- view: job_posting_report_counts
  sql_table_name: JOB_POSTING_REPORT_COUNTS
  fields:

  - dimension: active_submissions
    type: int
    sql: ${TABLE}.ACTIVE_SUBMISSIONS

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

  - dimension: posting_status_code
    sql: ${TABLE}.POSTING_STATUS_CODE

  - dimension: posting_visibility_status_code
    sql: ${TABLE}.POSTING_VISIBILITY_STATUS_CODE

  - dimension: total_engagements
    type: int
    sql: ${TABLE}.TOTAL_ENGAGEMENTS

  - dimension: total_pending_requests
    type: int
    sql: ${TABLE}.TOTAL_PENDING_REQUESTS

  - dimension: total_submissions
    type: int
    sql: ${TABLE}.TOTAL_SUBMISSIONS

  - measure: count
    type: count
    drill_fields: [job_posting.original_job_posting_id]

