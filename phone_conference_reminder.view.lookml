- view: phone_conference_reminder
  sql_table_name: PHONE_CONFERENCE_REMINDER
  fields:

  - dimension: job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_ID

  - dimension_group: reminder_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.REMINDER_DATETIME

  - dimension: reminder_id
    type: int
    sql: ${TABLE}.REMINDER_ID

  - measure: count
    type: count
    drill_fields: [job_posting.original_job_posting_id]

