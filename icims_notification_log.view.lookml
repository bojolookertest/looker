- view: icims_notification_log
  sql_table_name: ICIMS_NOTIFICATION_LOG
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

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

  - dimension: notification_type_code
    sql: ${TABLE}.NOTIFICATION_TYPE_CODE

  - dimension: payload
    sql: ${TABLE}.PAYLOAD

  - dimension: reference_id
    type: int
    sql: ${TABLE}.REFERENCE_ID

  - dimension: response_payload
    sql: ${TABLE}.RESPONSE_PAYLOAD

  - dimension: response_status_code
    type: int
    sql: ${TABLE}.RESPONSE_STATUS_CODE

  - measure: count
    type: count
    drill_fields: [id]

