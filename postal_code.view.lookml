- view: postal_code
  sql_table_name: POSTAL_CODE
  fields:

  - dimension: postal_code_id
    primary_key: true
    type: int
    sql: ${TABLE}.POSTAL_CODE_ID

  - dimension: abbr
    sql: ${TABLE}.ABBR

  - dimension: area_code
    sql: ${TABLE}.AREA_CODE

  - dimension: city
    sql: ${TABLE}.CITY

  - dimension: city_type
    sql: ${TABLE}.CITY_TYPE

  - dimension: latitude
    type: number
    sql: ${TABLE}.LATITUDE

  - dimension: longitude
    type: number
    sql: ${TABLE}.LONGITUDE

  - dimension: state_name
    sql: ${TABLE}.STATE_NAME

  - dimension: type_code
    sql: ${TABLE}.TYPE_CODE

  - dimension: zip
    sql: ${TABLE}.ZIP

  - measure: count
    type: count
    drill_fields: [postal_code_id, state_name]

