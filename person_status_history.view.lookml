- view: person_status_history
  sql_table_name: PERSON_STATUS_HISTORY
  fields:

  - dimension: person_status_history_id
    primary_key: true
    type: int
    sql: ${TABLE}.PERSON_STATUS_HISTORY_ID

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

  - dimension: person_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERSON_ID

  - dimension: person_status_code
    sql: ${TABLE}.PERSON_STATUS_CODE

  - measure: count
    type: count
    drill_fields: [person_status_history_id, person.person_id, person.first_name, person.last_name]

