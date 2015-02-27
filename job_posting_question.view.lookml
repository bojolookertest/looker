- view: job_posting_question
  sql_table_name: JOB_POSTING_QUESTION
  fields:

  - dimension: job_posting_question_id
    primary_key: true
    type: int
    sql: ${TABLE}.JOB_POSTING_QUESTION_ID

  - dimension: answer_type_code
    sql: ${TABLE}.ANSWER_TYPE_CODE

  - dimension: correct_answer
    sql: ${TABLE}.CORRECT_ANSWER

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: deleted
    sql: ${TABLE}.DELETED

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

  - dimension: question_text
    sql: ${TABLE}.QUESTION_TEXT

  - dimension: question_type_code
    sql: ${TABLE}.QUESTION_TYPE_CODE

  - dimension: sort_order
    type: int
    sql: ${TABLE}.SORT_ORDER

  - measure: count
    type: count
    drill_fields: [job_posting_question_id, job_posting.original_job_posting_id, submission_answer.count]

