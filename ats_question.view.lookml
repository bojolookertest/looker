- view: ats_question
  sql_table_name: ATS_QUESTION
  fields:

  - dimension: ats_question_id
    primary_key: true
    type: int
    sql: ${TABLE}.ATS_QUESTION_ID

  - dimension: ats_validation_id
    type: int
    # hidden: true
    sql: ${TABLE}.ATS_VALIDATION_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: format_instruction
    sql: ${TABLE}.FORMAT_INSTRUCTION

  - dimension: label
    sql: ${TABLE}.LABEL

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - measure: count
    type: count
    drill_fields: [ats_question_id, ats_validation.ats_validation_id, ats_validation.name, ats_configuration.count, submission_answer.count]

