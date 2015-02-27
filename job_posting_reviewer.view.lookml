- view: job_posting_reviewer
  sql_table_name: JOB_POSTING_REVIEWER
  fields:

  - dimension: job_posting_reviewer_id
    primary_key: true
    type: int
    sql: ${TABLE}.JOB_POSTING_REVIEWER_ID

  - dimension: active_flag
    sql: ${TABLE}.ACTIVE_FLAG

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

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - job_posting_reviewer_id
    - person.person_id
    - person.first_name
    - person.last_name
    - job_posting.original_job_posting_id
    - submission_reviewer.count

