- view: ses_bounce_log_recipient
  sql_table_name: SES_BOUNCE_LOG_RECIPIENT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: email
    sql: ${TABLE}.EMAIL

  - dimension: log_id
    type: int
    sql: ${TABLE}.LOG_ID

  - measure: count
    type: count
    drill_fields: [id]

