- view: award_question
  sql_table_name: AWARD_QUESTION
  fields:

  - dimension: award_question_id
    primary_key: true
    type: int
    sql: ${TABLE}.AWARD_QUESTION_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: text
    sql: ${TABLE}.TEXT

  - measure: count
    type: count
    drill_fields: [award_question_id, company_award_question.count, submission_award_question_answer.count]

