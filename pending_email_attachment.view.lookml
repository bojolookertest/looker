- view: pending_email_attachment
  sql_table_name: PENDING_EMAIL_ATTACHMENT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: content_id
    type: int
    # hidden: true
    sql: ${TABLE}.CONTENT_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: pending_email_id
    type: int
    # hidden: true
    sql: ${TABLE}.PENDING_EMAIL_ID

  - measure: count
    type: count
    drill_fields: [id, pending_email.id, content.content_id, content.file_name]

