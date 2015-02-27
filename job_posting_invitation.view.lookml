- view: job_posting_invitation
  sql_table_name: JOB_POSTING_INVITATION
  fields:

  - dimension: job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_ID

  - dimension: message_id
    type: int
    # hidden: true
    sql: ${TABLE}.MESSAGE_ID

  - measure: count
    type: count
    drill_fields: [message.parent_message_id, job_posting.original_job_posting_id]

