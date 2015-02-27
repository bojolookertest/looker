- view: phone_conference_job_schedule
  sql_table_name: PHONE_CONFERENCE_JOB_SCHEDULE
  fields:

  - dimension: job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_ID

  - dimension: schedule_id
    type: int
    sql: ${TABLE}.SCHEDULE_ID

  - measure: count
    type: count
    drill_fields: [job_posting.original_job_posting_id]

