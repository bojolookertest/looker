- view: qrtz_calendars
  sql_table_name: QRTZ_CALENDARS
  fields:

  - dimension: calendar
    sql: ${TABLE}.CALENDAR

  - dimension: calendar_name
    sql: ${TABLE}.CALENDAR_NAME

  - measure: count
    type: count
    drill_fields: [calendar_name]

