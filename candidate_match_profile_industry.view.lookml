- view: candidate_match_profile_industry
  sql_table_name: CANDIDATE_MATCH_PROFILE_INDUSTRY
  fields:

  - dimension: candidate_match_profile_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_MATCH_PROFILE_ID

  - dimension: industry_id
    type: int
    # hidden: true
    sql: ${TABLE}.INDUSTRY_ID

  - measure: count
    type: count
    drill_fields: [candidate_match_profile.id, industry.name, industry.parent_industry_id]

