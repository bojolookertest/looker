- view: ats_submission
  sql_table_name: ATS_SUBMISSION
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: ats_relationship_id
    type: int
    sql: ${TABLE}.ATS_RELATIONSHIP_ID

  - dimension: submission_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_ID

  - dimension: submission_reference_id
    sql: ${TABLE}.SUBMISSION_REFERENCE_ID

  - measure: count
    type: count
    drill_fields: [id, submission.submission_id]

