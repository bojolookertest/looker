- view: search_string
  sql_table_name: SEARCH_STRING
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: instances
    type: int
    sql: ${TABLE}.COUNT

  - dimension: sha_value
    sql: ${TABLE}.SHA_VALUE

  - dimension: value
    sql: ${TABLE}.VALUE

  - measure: count
    type: count
    drill_fields: [id, person_search_string.instances]

