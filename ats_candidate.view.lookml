- view: ats_candidate
  sql_table_name: ATS_CANDIDATE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: ats_relationship_id
    type: int
    sql: ${TABLE}.ATS_RELATIONSHIP_ID

  - dimension: candidate_id
    type: int
    # hidden: true
    sql: ${TABLE}.CANDIDATE_ID

  - dimension: candidate_reference_id
    sql: ${TABLE}.CANDIDATE_REFERENCE_ID

  - measure: count
    type: count
    drill_fields: [id, candidate.candidate_id, candidate.name]

