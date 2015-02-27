- view: posting_comment
  sql_table_name: POSTING_COMMENT
  fields:

  - dimension: posting_comment_id
    primary_key: true
    type: int
    sql: ${TABLE}.POSTING_COMMENT_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: deleted_flag
    sql: ${TABLE}.DELETED_FLAG

  - dimension: engaged_only_flag
    sql: ${TABLE}.ENGAGED_ONLY_FLAG

  - dimension: inappropriate_flag
    sql: ${TABLE}.INAPPROPRIATE_FLAG

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

  - dimension: posting_default_comment_id
    type: int
    # hidden: true
    sql: ${TABLE}.POSTING_DEFAULT_COMMENT_ID

  - dimension: read_by_hiring_manager
    sql: ${TABLE}.READ_BY_HIRING_MANAGER

  - dimension: sticky_flag
    sql: ${TABLE}.STICKY_FLAG

  - dimension: text
    sql: ${TABLE}.TEXT

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - posting_comment_id
    - person.person_id
    - person.first_name
    - person.last_name
    - job_posting.original_job_posting_id
    - posting_default_comment.posting_default_comment_id
    - posting_comment_recruiter.count

