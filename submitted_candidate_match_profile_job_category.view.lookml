- view: submitted_candidate_match_profile_job_category
  sql_table_name: SUBMITTED_CANDIDATE_MATCH_PROFILE_JOB_CATEGORY
  fields:

  - dimension: candidate_match_profile_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_MATCH_PROFILE_ID

  - dimension: job_category_id
    type: int
    # hidden: true
    sql: ${TABLE}.JOB_CATEGORY_ID

  - measure: count
    type: count
    drill_fields: [candidate_match_profile.id, job_category.id, job_category.name]

