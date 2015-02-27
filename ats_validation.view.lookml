- view: ats_validation
  sql_table_name: ATS_VALIDATION
  fields:

  - dimension: ats_validation_id
    primary_key: true
    type: int
    sql: ${TABLE}.ATS_VALIDATION_ID

  - dimension: class
    sql: ${TABLE}.CLASS

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: name
    sql: ${TABLE}.NAME

  - measure: count
    type: count
    drill_fields: [ats_validation_id, name, ats_question.count]

