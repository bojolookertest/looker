- view: bounty_connect_audit
  sql_table_name: BOUNTY_CONNECT_AUDIT
  fields:

  - dimension: bounty_connect_audit_id
    primary_key: true
    type: int
    sql: ${TABLE}.BOUNTY_CONNECT_AUDIT_ID

  - dimension: bounty_connect_recommendation
    sql: ${TABLE}.BOUNTY_CONNECT_RECOMMENDATION

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_ID

  - dimension: message_id
    type: int
    # hidden: true
    sql: ${TABLE}.MESSAGE_ID

  - dimension: message_status_code
    sql: ${TABLE}.MESSAGE_STATUS_CODE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: recruiter_person_id
    type: int
    sql: ${TABLE}.RECRUITER_PERSON_ID

  - dimension: relevance_summary
    sql: ${TABLE}.RELEVANCE_SUMMARY

  - dimension: requested_engagement
    sql: ${TABLE}.REQUESTED_ENGAGEMENT

  - measure: count
    type: count
    drill_fields: [bounty_connect_audit_id, job_posting.original_job_posting_id, message.parent_message_id]

