- view: job_posting_relationship_report_count
  sql_table_name: JOB_POSTING_RELATIONSHIP_REPORT_COUNT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: contact_flag
    sql: ${TABLE}.CONTACT_FLAG

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: employer_id
    type: int
    sql: ${TABLE}.EMPLOYER_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: preferred_flag
    sql: ${TABLE}.PREFERRED_FLAG

  - dimension: recruiter_id
    type: int
    # hidden: true
    sql: ${TABLE}.RECRUITER_ID

  - dimension: total_engagement
    type: int
    sql: ${TABLE}.TOTAL_ENGAGEMENT

  - measure: count
    type: count
    drill_fields: [id, recruiter.legal_first_name, recruiter.legal_last_name]

