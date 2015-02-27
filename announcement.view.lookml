- view: announcement
  sql_table_name: ANNOUNCEMENT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: attachment_content_id
    type: int
    sql: ${TABLE}.ATTACHMENT_CONTENT_ID

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.END_DATE

  - dimension: for_headhunters
    type: yesno
    sql: ${TABLE}.FOR_HEADHUNTERS

  - dimension: for_hiring_managers
    type: yesno
    sql: ${TABLE}.FOR_HIRING_MANAGERS

  - dimension: image_content_id
    type: int
    sql: ${TABLE}.IMAGE_CONTENT_ID

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.START_DATE

  - dimension: text
    sql: ${TABLE}.TEXT

  - measure: count
    type: count
    drill_fields: [id, announcement_user.count]

