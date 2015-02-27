- view: submitted_candidate_match_profile_region
  sql_table_name: SUBMITTED_CANDIDATE_MATCH_PROFILE_REGION
  fields:

  - dimension: candidate_match_profile_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_MATCH_PROFILE_ID

  - dimension: region_id
    type: int
    # hidden: true
    sql: ${TABLE}.REGION_ID

  - measure: count
    type: count
    drill_fields: [candidate_match_profile.id, region.name, region.parent_region_id]

