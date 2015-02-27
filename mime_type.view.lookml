- view: mime_type
  sql_table_name: MIME_TYPE
  fields:

  - dimension: mime_type_id
    primary_key: true
    type: int
    sql: ${TABLE}.MIME_TYPE_ID

  - dimension: mime_type
    sql: ${TABLE}.MIME_TYPE

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - mime_type_id
    - bw_tmp_content.count
    - content.count
    - content_placeholder.count
    - pending_email_content.count
    - sent_email_content.count

