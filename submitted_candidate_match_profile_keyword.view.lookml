- view: submitted_candidate_match_profile_keyword
  sql_table_name: SUBMITTED_CANDIDATE_MATCH_PROFILE_KEYWORD
  fields:

  - dimension: candidate_match_profile_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_MATCH_PROFILE_ID

  - dimension: keyword
    sql: ${TABLE}.KEYWORD

  - measure: count
    type: count
    drill_fields: [candidate_match_profile.id]

