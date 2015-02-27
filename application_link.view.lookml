- view: application_link
  sql_table_name: APPLICATION_LINK
  fields:

  - dimension: created_by
    type: int
    sql: ${TABLE}.CREATED_BY

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATION_DATE

  - dimension_group: expiration
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRATION_DATE

  - dimension: initial_uses
    type: int
    sql: ${TABLE}.INITIAL_USES

  - dimension: link_id
    type: int
    sql: ${TABLE}.LINK_ID

  - dimension: link_url
    sql: ${TABLE}.LINK_URL

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_DATE

  - dimension: uses_left
    type: int
    sql: ${TABLE}.USES_LEFT

  - measure: count
    type: count
    drill_fields: []

