- view: stored_document
  sql_table_name: STORED_DOCUMENT
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

  - dimension: file_name_converted
    type: yesno
    sql: ${TABLE}.FILE_NAME_CONVERTED

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: status
    sql: ${TABLE}.STATUS

  - dimension: storage_location
    sql: ${TABLE}.STORAGE_LOCATION

  - dimension: user_supplied_filename
    sql: ${TABLE}.USER_SUPPLIED_FILENAME

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - user_supplied_filename
    - content.content_id
    - content.file_name
    - monthly_report.count
    - stored_document_copies.count

