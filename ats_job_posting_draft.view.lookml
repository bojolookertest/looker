- view: ats_job_posting_draft
  sql_table_name: ATS_JOB_POSTING_DRAFT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: ats_job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.ATS_JOB_POSTING_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: job_json
    sql: ${TABLE}.JOB_JSON

  - measure: count
    type: count
    drill_fields: [id, ats_job_posting.id]

