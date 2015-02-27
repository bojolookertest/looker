- view: engagement_status
  sql_table_name: ENGAGEMENT_STATUS
  fields:

  - dimension: engagement_status_id
    primary_key: true
    type: int
    sql: ${TABLE}.ENGAGEMENT_STATUS_ID

  - dimension: active
    sql: ${TABLE}.ACTIVE

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: posting_action_id
    type: int
    # hidden: true
    sql: ${TABLE}.POSTING_ACTION_ID

  - dimension: status_code
    sql: ${TABLE}.STATUS_CODE

  - dimension: status_comment
    sql: ${TABLE}.STATUS_COMMENT

  - dimension: status_read
    sql: ${TABLE}.STATUS_READ

  - dimension_group: status_requested
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.STATUS_REQUESTED_DATE

  - measure: count
    type: count
    drill_fields: [engagement_status_id, posting_action.posting_action_id]

