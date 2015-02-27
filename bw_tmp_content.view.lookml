- view: bw_tmp_content
  sql_table_name: BW_TMP_CONTENT
  fields:

  - dimension: content
    sql: ${TABLE}.CONTENT

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
    drill_fields: [file_name, content.content_id, content.file_name, mime_type.mime_type_id]

