- view: file_system
  sql_table_name: FILE_SYSTEM
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: file_path
    sql: ${TABLE}.FILE_PATH

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: url_path
    sql: ${TABLE}.URL_PATH

  - measure: count
    type: count
    drill_fields: [id, stored_file.count]

