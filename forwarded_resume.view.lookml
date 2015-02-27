- view: forwarded_resume
  sql_table_name: FORWARDED_RESUME
  fields:

  - dimension: candidate_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_ID

  - dimension: message_id
    type: int
    # hidden: true
    sql: ${TABLE}.MESSAGE_ID

  - measure: count
    type: count
    drill_fields: [message.parent_message_id, candidate.candidate_id, candidate.name]

