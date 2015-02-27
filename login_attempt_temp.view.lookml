- view: login_attempt_temp
  sql_table_name: LOGIN_ATTEMPT_TEMP
  fields:

  - dimension_group: attempt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ATTEMPT_DATE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: exception_message
    sql: ${TABLE}.EXCEPTION_MESSAGE

  - dimension: login_attempt_id
    type: int
    # hidden: true
    sql: ${TABLE}.LOGIN_ATTEMPT_ID

  - dimension: login_name
    sql: ${TABLE}.LOGIN_NAME

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: success_flag
    sql: ${TABLE}.SUCCESS_FLAG

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - login_name
    - login_attempt.login_attempt_id
    - login_attempt.login_name
    - person.person_id
    - person.first_name
    - person.last_name

