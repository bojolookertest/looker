- view: email_type_attachment
  sql_table_name: EMAIL_TYPE_ATTACHMENT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: content_id
    type: int
    # hidden: true
    sql: ${TABLE}.CONTENT_ID

  - dimension: type_id
    type: int
    sql: ${TABLE}.TYPE_ID

  - measure: count
    type: count
    drill_fields: [id, content.content_id, content.file_name]

