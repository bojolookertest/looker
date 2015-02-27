- view: icims_api_call_log
  sql_table_name: ICIMS_API_CALL_LOG
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: api_call_type
    sql: ${TABLE}.API_CALL_TYPE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: http_headers
    sql: ${TABLE}.HTTP_HEADERS

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: reference_id
    type: int
    sql: ${TABLE}.REFERENCE_ID

  - dimension: request
    sql: ${TABLE}.REQUEST

  - dimension: response
    sql: ${TABLE}.RESPONSE

  - dimension: status_code
    sql: ${TABLE}.STATUS_CODE

  - dimension: url
    sql: ${TABLE}.URL

  - measure: count
    type: count
    drill_fields: [id]

