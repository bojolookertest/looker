- view: ses_bounce_log
  sql_table_name: SES_BOUNCE_LOG
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: bounce_sub_type
    sql: ${TABLE}.BOUNCE_SUB_TYPE

  - dimension: bounce_type
    sql: ${TABLE}.BOUNCE_TYPE

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: feedback_id
    sql: ${TABLE}.FEEDBACK_ID

  - dimension: notification_type
    sql: ${TABLE}.NOTIFICATION_TYPE

  - dimension: payload
    sql: ${TABLE}.PAYLOAD

  - dimension: suppression_type
    sql: ${TABLE}.SUPPRESSION_TYPE

  - measure: count
    type: count
    drill_fields: [id]

