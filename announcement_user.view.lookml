- view: announcement_user
  sql_table_name: ANNOUNCEMENT_USER
  fields:

  - dimension: announcement_id
    type: int
    # hidden: true
    sql: ${TABLE}.ANNOUNCEMENT_ID

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension: user_id
    type: int
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [announcement.id]

