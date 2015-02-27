- view: user_preference_type
  sql_table_name: USER_PREFERENCE_TYPE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: preference_status_code
    sql: ${TABLE}.PREFERENCE_STATUS_CODE

  - dimension: sort_order
    type: int
    sql: ${TABLE}.SORT_ORDER

  - measure: count
    type: count
    drill_fields: [id]

