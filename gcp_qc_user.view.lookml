- view: gcp_qc_user
  sql_table_name: GCP_QC_USER
  fields:

  - dimension: access_code
    sql: ${TABLE}.ACCESS_CODE

  - dimension: conference_id
    type: int
    sql: ${TABLE}.CONFERENCE_ID

  - dimension_group: end_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.END_DATETIME

  - dimension: gcp_qc_id
    type: int
    sql: ${TABLE}.GCP_QC_ID

  - dimension: number
    sql: ${TABLE}.NUMBER

  - dimension: organizer_access_code
    sql: ${TABLE}.ORGANIZER_ACCESS_CODE

  - dimension: organizer_number
    sql: ${TABLE}.ORGANIZER_NUMBER

  - dimension: phone_conference_schedule_id
    type: int
    # hidden: true
    sql: ${TABLE}.PHONE_CONFERENCE_SCHEDULE_ID

  - dimension_group: request
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.REQUEST

  - dimension_group: response
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.RESPONSE

  - dimension_group: start_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.START_DATETIME

  - dimension: sub_account_id
    type: int
    sql: ${TABLE}.SUB_ACCOUNT_ID

  - dimension: user_id
    type: int
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: []

