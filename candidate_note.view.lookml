- view: candidate_note
  sql_table_name: CANDIDATE_NOTE
  fields:

  - dimension: candidate_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_ID

  - dimension: inappropriate_flag
    sql: ${TABLE}.INAPPROPRIATE_FLAG

  - dimension: note_id
    type: int
    # hidden: true
    sql: ${TABLE}.NOTE_ID

  - dimension: read_by_hiring_manager
    sql: ${TABLE}.READ_BY_HIRING_MANAGER

  - dimension: read_by_recruiter
    sql: ${TABLE}.READ_BY_RECRUITER

  - dimension: submission_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_ID

  - measure: count
    type: count
    drill_fields: [note.note_id, candidate.candidate_id, candidate.name, submission.submission_id]

