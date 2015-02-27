- view: submission_award_question_answer
  sql_table_name: SUBMISSION_AWARD_QUESTION_ANSWER
  fields:

  - dimension: answer
    sql: ${TABLE}.ANSWER

  - dimension: award_question_id
    type: int
    # hidden: true
    sql: ${TABLE}.AWARD_QUESTION_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: submission_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_ID

  - measure: count
    type: count
    drill_fields: [award_question.award_question_id, submission.submission_id]

