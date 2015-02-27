- view: sent_email_content
  sql_table_name: SENT_EMAIL_CONTENT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: content
    sql: ${TABLE}.CONTENT

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: mime_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.MIME_TYPE_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: sent_email_id
    type: int
    # hidden: true
    sql: ${TABLE}.SENT_EMAIL_ID

  - measure: count
    type: count
    drill_fields: [id, sent_email.id, mime_type.mime_type_id]

