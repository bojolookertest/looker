- view: submission_view
  sql_table_name: SUBMISSION_VIEW
  fields:

  - dimension: submission_view_id
    primary_key: true
    type: int
    sql: ${TABLE}.SUBMISSION_VIEW_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: hiring_manager_person_id
    type: int
    sql: ${TABLE}.HIRING_MANAGER_PERSON_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: submission_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_ID

  - measure: count
    type: count
    drill_fields: [submission_view_id, submission.submission_id]

