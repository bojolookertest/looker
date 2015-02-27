- view: note_text
  sql_table_name: NOTE_TEXT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: body_text
    sql: ${TABLE}.BODY_TEXT

  - measure: count
    type: count
    drill_fields: [id]

