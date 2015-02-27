- view: phone_conference_schedule_status
  sql_table_name: PHONE_CONFERENCE_SCHEDULE_STATUS
  fields:

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: label
    sql: ${TABLE}.LABEL

  - dimension: status
    sql: ${TABLE}.STATUS

  - measure: count
    type: count
    drill_fields: []

