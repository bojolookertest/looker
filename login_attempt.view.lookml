- view: login_attempt
  sql_table_name: LOGIN_ATTEMPT
  fields:

  - dimension: login_attempt_id
    primary_key: true
    type: int
    sql: ${TABLE}.LOGIN_ATTEMPT_ID

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

  - dimension: ip_address
    sql: ${TABLE}.IP_ADDRESS

  - dimension: login_name
    sql: ${TABLE}.LOGIN_NAME

  - dimension: login_type_code
    sql: ${TABLE}.LOGIN_TYPE_CODE

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

  - dimension: user_agent
    sql: ${TABLE}.USER_AGENT

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - login_attempt_id
    - login_name
    - person.person_id
    - person.first_name
    - person.last_name
    - login_attempt_temp.count

