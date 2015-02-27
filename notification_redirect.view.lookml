- view: notification_redirect
  sql_table_name: NOTIFICATION_REDIRECT
  fields:

  - dimension: notification_redirect_id
    primary_key: true
    type: int
    sql: ${TABLE}.NOTIFICATION_REDIRECT_ID

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

  - dimension: notification_type
    sql: ${TABLE}.NOTIFICATION_TYPE

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: read_ind
    sql: ${TABLE}.READ_IND

  - dimension: uri
    sql: ${TABLE}.URI

  - measure: count
    type: count
    drill_fields: [notification_redirect_id, person.person_id, person.first_name, person.last_name, job_posting.original_job_posting_id]

