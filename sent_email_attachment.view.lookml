- view: sent_email_attachment
  sql_table_name: SENT_EMAIL_ATTACHMENT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: content_id
    type: int
    # hidden: true
    sql: ${TABLE}.CONTENT_ID

  - dimension: sent_email_id
    type: int
    # hidden: true
    sql: ${TABLE}.SENT_EMAIL_ID

  - measure: count
    type: count
    drill_fields: [id, sent_email.id, content.content_id, content.file_name]

