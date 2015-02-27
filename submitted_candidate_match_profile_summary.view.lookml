- view: submitted_candidate_match_profile_summary
  sql_table_name: SUBMITTED_CANDIDATE_MATCH_PROFILE_SUMMARY
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: candidate_match_profile_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_MATCH_PROFILE_ID

  - dimension: match_score
    type: number
    sql: ${TABLE}.MATCH_SCORE

  - dimension: match_summary
    sql: ${TABLE}.MATCH_SUMMARY

  - dimension: matches
    type: yesno
    sql: ${TABLE}.MATCHES

  - dimension: submission_id
    type: int
    # hidden: true
    sql: ${TABLE}.SUBMISSION_ID

  - dimension: submitted
    type: yesno
    sql: ${TABLE}.SUBMITTED

  - measure: count
    type: count
    drill_fields: [id, submission.submission_id, candidate_match_profile.id]

