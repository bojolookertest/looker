- view: registration_attempt
  sql_table_name: REGISTRATION_ATTEMPT
  fields:

  - dimension: registration_attempt_id
    primary_key: true
    type: int
    sql: ${TABLE}.REGISTRATION_ATTEMPT_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: ip_address
    sql: ${TABLE}.IP_ADDRESS

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: referral_code_used
    sql: ${TABLE}.REFERRAL_CODE_USED

  - dimension: referrer_id
    type: int
    sql: ${TABLE}.REFERRER_ID

  - dimension: success_flag
    sql: ${TABLE}.SUCCESS_FLAG

  - measure: count
    type: count
    drill_fields: [registration_attempt_id]

