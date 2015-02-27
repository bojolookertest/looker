- view: help_text
  sql_table_name: HELP_TEXT
  fields:

  - dimension: help_text_id
    primary_key: true
    type: int
    sql: ${TABLE}.HELP_TEXT_ID

  - dimension: handle
    sql: ${TABLE}.HANDLE

  - dimension: text
    sql: ${TABLE}.TEXT

  - measure: count
    type: count
    drill_fields: [help_text_id]

