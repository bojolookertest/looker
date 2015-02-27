- view: ats_job_note
  sql_table_name: ATS_JOB_NOTE
  fields:

  - dimension: ats_job_note_id
    primary_key: true
    type: int
    sql: ${TABLE}.ATS_JOB_NOTE_ID

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

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - measure: count
    type: count
    drill_fields: [ats_job_note_id, job_posting.original_job_posting_id]

