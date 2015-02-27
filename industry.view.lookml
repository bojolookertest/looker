- view: industry
  sql_table_name: INDUSTRY
  fields:

  - dimension: parent_industry_id
    primary_key: true
    type: int
    sql: ${TABLE}.PARENT_INDUSTRY_ID

  - dimension: id
    type: int
    sql: ${TABLE}.ID

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: sort_order
    type: int
    sql: ${TABLE}.SORT_ORDER

  - dimension: status_code
    sql: ${TABLE}.STATUS_CODE

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - parent_industry_id
    - name
    - candidate_match_profile_industry.count
    - icims_industry_map.count
    - job_posting.count
    - marketing_info.count
    - submitted_candidate_match_profile_industry.count

