- view: employer_note
  sql_table_name: EMPLOYER_NOTE
  fields:

  - dimension: employer_id
    type: int
    sql: ${TABLE}.EMPLOYER_ID

  - dimension: note_id
    type: int
    # hidden: true
    sql: ${TABLE}.NOTE_ID

  - measure: count
    type: count
    drill_fields: [note.note_id]

