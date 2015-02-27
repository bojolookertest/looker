- view: posting_comment_recruiter
  sql_table_name: POSTING_COMMENT_RECRUITER
  fields:

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: posting_comment_id
    type: int
    # hidden: true
    sql: ${TABLE}.POSTING_COMMENT_ID

  - measure: count
    type: count
    drill_fields: [person.person_id, person.first_name, person.last_name, posting_comment.posting_comment_id]

