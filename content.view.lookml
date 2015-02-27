- view: content
  sql_table_name: CONTENT
  fields:

  - dimension: content_id
    primary_key: true
    type: int
    sql: ${TABLE}.CONTENT_ID

  - dimension: content
    sql: ${TABLE}.CONTENT

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: file_name
    sql: ${TABLE}.FILE_NAME

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

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - content_id
    - file_name
    - mime_type.mime_type_id
    - bw_tmp_content.count
    - content_placeholder.count
    - email_type_attachment.count
    - pending_email_attachment.count
    - sent_email_attachment.count
    - stored_document.count

