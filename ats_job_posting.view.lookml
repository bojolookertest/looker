- view: ats_job_posting
  sql_table_name: ATS_JOB_POSTING
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: ats_relationship_id
    type: int
    sql: ${TABLE}.ATS_RELATIONSHIP_ID

  - dimension: job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_ID

  - dimension: job_posting_reference_id
    sql: ${TABLE}.JOB_POSTING_REFERENCE_ID

  - dimension: withdrawn
    type: yesno
    sql: ${TABLE}.WITHDRAWN

  - measure: count
    type: count
    drill_fields: [id, job_posting.original_job_posting_id, ats_job_posting_draft.count]

