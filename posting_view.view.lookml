- view: posting_view
  sql_table_name: POSTING_VIEW
  fields:

  - dimension: posting_view_id
    primary_key: true
    type: int
    sql: ${TABLE}.POSTING_VIEW_ID

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

  - dimension: modified_date
    type: int
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: session_id
    sql: ${TABLE}.SESSION_ID

  - dimension: submitted_flag
    sql: ${TABLE}.SUBMITTED_FLAG

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - posting_view_id
    - person.person_id
    - person.first_name
    - person.last_name
    - job_posting.original_job_posting_id
    - posting_view_archive.count

