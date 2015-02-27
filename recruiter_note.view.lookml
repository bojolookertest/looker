- view: recruiter_note
  sql_table_name: RECRUITER_NOTE
  fields:

  - dimension: note_id
    type: int
    # hidden: true
    sql: ${TABLE}.NOTE_ID

  - dimension: recruiter_id
    type: int
    # hidden: true
    sql: ${TABLE}.RECRUITER_ID

  - measure: count
    type: count
    drill_fields: [note.note_id, recruiter.legal_first_name, recruiter.legal_last_name]

