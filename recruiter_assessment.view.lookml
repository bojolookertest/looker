- view: recruiter_assessment
  sql_table_name: RECRUITER_ASSESSMENT
  fields:

  - dimension: recruiter_assessment_id
    primary_key: true
    type: int
    sql: ${TABLE}.RECRUITER_ASSESSMENT_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: current_flag
    sql: ${TABLE}.CURRENT_FLAG

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: recruiter_assessment_type_code
    sql: ${TABLE}.RECRUITER_ASSESSMENT_TYPE_CODE

  - dimension: recruiter_person_id
    type: int
    sql: ${TABLE}.RECRUITER_PERSON_ID

  - measure: count
    type: count
    drill_fields: [recruiter_assessment_id]

