- view: email_suppression_list
  sql_table_name: EMAIL_SUPPRESSION_LIST
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: active
    type: yesno
    sql: ${TABLE}.ACTIVE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: email
    sql: ${TABLE}.EMAIL

  - dimension_group: expiration
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRATION

  - dimension: log_id
    type: int
    sql: ${TABLE}.LOG_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: suppression_type
    sql: ${TABLE}.SUPPRESSION_TYPE

  - measure: count
    type: count
    drill_fields: [id]

