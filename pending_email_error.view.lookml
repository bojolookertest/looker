- view: pending_email_error
  sql_table_name: PENDING_EMAIL_ERROR
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: error
    sql: ${TABLE}.ERROR

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: pending_email_id
    type: int
    # hidden: true
    sql: ${TABLE}.PENDING_EMAIL_ID

  - measure: count
    type: count
    drill_fields: [id, name, pending_email.id]

