- view: region
  sql_table_name: REGION
  fields:

  - dimension: parent_region_id
    primary_key: true
    type: int
    sql: ${TABLE}.PARENT_REGION_ID

  - dimension: active_flag
    sql: ${TABLE}.ACTIVE_FLAG

  - dimension: country_code
    sql: ${TABLE}.COUNTRY_CODE

  - dimension: currency_code
    sql: ${TABLE}.CURRENCY_CODE

  - dimension: default_language
    sql: ${TABLE}.DEFAULT_LANGUAGE

  - dimension: default_timezone
    sql: ${TABLE}.DEFAULT_TIMEZONE

  - dimension: level_sort_order
    type: int
    sql: ${TABLE}.LEVEL_SORT_ORDER

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: postal_abbreviation
    sql: ${TABLE}.POSTAL_ABBREVIATION

  - dimension: region_id
    type: int
    # hidden: true
    sql: ${TABLE}.REGION_ID

  - dimension: region_type_code
    sql: ${TABLE}.REGION_TYPE_CODE

  - dimension: searchable_flag
    sql: ${TABLE}.SEARCHABLE_FLAG

  - dimension: tree_depth
    type: int
    sql: ${TABLE}.TREE_DEPTH

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - parent_region_id
    - name
    - region.name
    - region.parent_region_id
    - candidate_match_profile_region.count
    - job_posting.count
    - region.count
    - submitted_candidate_match_profile_region.count

