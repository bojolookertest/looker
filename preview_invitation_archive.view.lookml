- view: preview_invitation_archive
  sql_table_name: PREVIEW_INVITATION_ARCHIVE
  fields:

  - dimension: preview_invitation_archive_id
    primary_key: true
    type: int
    sql: ${TABLE}.PREVIEW_INVITATION_ARCHIVE_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: industry_match
    sql: ${TABLE}.INDUSTRY_MATCH

  - dimension: job_category_match
    sql: ${TABLE}.JOB_CATEGORY_MATCH

  - dimension: job_posting_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_POSTING_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: read_ind
    sql: ${TABLE}.READ_IND

  - dimension: region_match
    sql: ${TABLE}.REGION_MATCH

  - dimension: viewed_ind
    sql: ${TABLE}.VIEWED_IND

  - measure: count
    type: count
    drill_fields: [preview_invitation_archive_id, person.person_id, person.first_name, person.last_name, job_posting.original_job_posting_id]

