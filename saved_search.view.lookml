- view: saved_search
  sql_table_name: SAVED_SEARCH
  fields:

  - dimension: search_id
    primary_key: true
    type: int
    sql: ${TABLE}.SEARCH_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: has_category
    sql: ${TABLE}.HAS_CATEGORY

  - dimension: has_industry
    sql: ${TABLE}.HAS_INDUSTRY

  - dimension: has_region
    sql: ${TABLE}.HAS_REGION

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: notify_on_new_matching_posting
    sql: ${TABLE}.NOTIFY_ON_NEW_MATCHING_POSTING

  - dimension: query
    sql: ${TABLE}.QUERY

  - dimension: specialty_flag
    sql: ${TABLE}.SPECIALTY_FLAG

  - measure: count
    type: count
    drill_fields: [name, search_parameter_value.count]

