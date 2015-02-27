- view: submission_answer
  sql_table_name: SUBMISSION_ANSWER
  fields:

  - dimension: submission_answer_id
    primary_key: true
    type: int
    sql: ${TABLE}.SUBMISSION_ANSWER_ID

  - dimension: answer
    sql: ${TABLE}.ANSWER

  - dimension: ats_question_id
    type: int
    # hidden: true
    sql: ${TABLE}.ATS_QUESTION_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: job_posting_question_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_QUESTION_ID

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
    drill_fields: [submission_answer_id, job_posting_question.job_posting_question_id, submission.submission_id, ats_question.ats_question_id]

