- view: search_parameter_value_type
  sql_table_name: SEARCH_PARAMETER_VALUE_TYPE
  fields:

  - dimension: code
    sql: ${TABLE}.CODE

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - measure: count
    type: count
    drill_fields: []

