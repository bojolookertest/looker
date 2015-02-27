- view: submitted_candidate_match_profile
  sql_table_name: SUBMITTED_CANDIDATE_MATCH_PROFILE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: active
    type: yesno
    sql: ${TABLE}.ACTIVE

  - dimension: candidate_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_ID

  - dimension: interviewed_only
    type: yesno
    sql: ${TABLE}.INTERVIEWED_ONLY

  - dimension: salary_maximum_range
    type: number
    sql: ${TABLE}.SALARY_MAXIMUM_RANGE

  - dimension: salary_minimum_range
    type: number
    sql: ${TABLE}.SALARY_MINIMUM_RANGE

  - dimension: submission_count
    type: int
    sql: ${TABLE}.SUBMISSION_COUNT

  - dimension: system_generated
    type: yesno
    sql: ${TABLE}.SYSTEM_GENERATED

  - measure: count
    type: count
    drill_fields: [id, candidate.candidate_id, candidate.name]

