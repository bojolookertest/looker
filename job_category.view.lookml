- view: job_category
  sql_table_name: JOB_CATEGORY
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: parent_category_id
    type: int
    sql: ${TABLE}.PARENT_CATEGORY_ID

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
    - id
    - name
    - candidate_match_profile_job_category.count
    - icims_job_category_map.count
    - job_posting.count
    - marketing_info.count
    - report_preference.count
    - submitted_candidate_match_profile_job_category.count

