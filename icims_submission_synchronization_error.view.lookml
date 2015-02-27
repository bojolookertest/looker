- view: icims_submission_synchronization_error
  sql_table_name: ICIMS_SUBMISSION_SYNCHRONIZATION_ERROR
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: error_message
    sql: ${TABLE}.ERROR_MESSAGE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: synchronization_id
    type: int
    sql: ${TABLE}.SYNCHRONIZATION_ID

  - measure: count
    type: count
    drill_fields: [id]

