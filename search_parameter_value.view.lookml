- view: search_parameter_value
  sql_table_name: SEARCH_PARAMETER_VALUE
  fields:

  - dimension: search_parameter_value_id
    primary_key: true
    type: int
    sql: ${TABLE}.SEARCH_PARAMETER_VALUE_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension_group: modified_by
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: saved_search_id
    type: int
    # hidden: true
    sql: ${TABLE}.SAVED_SEARCH_ID

  - dimension: search_parameter_value_type_code
    sql: ${TABLE}.SEARCH_PARAMETER_VALUE_TYPE_CODE

  - dimension: value
    type: int
    sql: ${TABLE}.VALUE

  - measure: count
    type: count
    drill_fields: [search_parameter_value_id, saved_search.name]

