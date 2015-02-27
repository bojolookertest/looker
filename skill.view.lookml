- view: skill
  sql_table_name: SKILL
  fields:

  - dimension: skill_id
    primary_key: true
    type: int
    sql: ${TABLE}.SKILL_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

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

  - dimension: required_flag
    sql: ${TABLE}.REQUIRED_FLAG

  - measure: count
    type: count
    drill_fields: [skill_id, job_posting.original_job_posting_id]

