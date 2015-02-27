- view: icims_submission_synchronization
  sql_table_name: ICIMS_SUBMISSION_SYNCHRONIZATION
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: ats_relationship_id
    type: int
    sql: ${TABLE}.ATS_RELATIONSHIP_ID

  - dimension: auto_retry
    type: yesno
    sql: ${TABLE}.AUTO_RETRY

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

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

  - dimension: synchronized_successfully
    type: yesno
    sql: ${TABLE}.SYNCHRONIZED_SUCCESSFULLY

  - measure: count
    type: count
    drill_fields: [id, submission.submission_id]

