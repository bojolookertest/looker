- view: phone_conference_schedule
  sql_table_name: PHONE_CONFERENCE_SCHEDULE
  fields:

  - dimension: schedule_id
    primary_key: true
    type: int
    sql: ${TABLE}.SCHEDULE_ID

  - dimension: cancelation_notes
    sql: ${TABLE}.CANCELATION_NOTES

  - dimension_group: conference_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CONFERENCE_DATETIME

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: duration_hours
    type: int
    sql: ${TABLE}.DURATION_HOURS

  - dimension: duration_minutes
    type: int
    sql: ${TABLE}.DURATION_MINUTES

  - dimension: hiring_manager_attending
    type: yesno
    sql: ${TABLE}.HIRING_MANAGER_ATTENDING

  - dimension: hiring_manager_person_id
    type: int
    sql: ${TABLE}.HIRING_MANAGER_PERSON_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: notes
    sql: ${TABLE}.NOTES

  - dimension: record_call
    type: yesno
    sql: ${TABLE}.RECORD_CALL

  - dimension: status
    sql: ${TABLE}.STATUS

  - dimension: timezone
    sql: ${TABLE}.TIMEZONE

  - dimension: uuid
    sql: ${TABLE}.UUID

  - measure: count
    type: count
    drill_fields: [gcp_qc_user.count]

