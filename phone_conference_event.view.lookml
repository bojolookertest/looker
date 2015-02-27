- view: phone_conference_event
  sql_table_name: PHONE_CONFERENCE_EVENT
  fields:

  - dimension: duration_minutes
    type: int
    sql: ${TABLE}.DURATION_MINUTES

  - dimension_group: end_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.END_DATETIME

  - dimension: event_id
    type: int
    sql: ${TABLE}.EVENT_ID

  - dimension: recording_available
    type: yesno
    sql: ${TABLE}.RECORDING_AVAILABLE

  - dimension: recording_content_id
    type: int
    sql: ${TABLE}.RECORDING_CONTENT_ID

  - dimension: schedule_id
    type: int
    sql: ${TABLE}.SCHEDULE_ID

  - dimension_group: start_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.START_DATETIME

  - measure: count
    type: count
    drill_fields: []

